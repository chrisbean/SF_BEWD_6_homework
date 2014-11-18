# == Schema Information
#
# Table name: drinks
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  list                :string(255)
#  profile             :string(255)
#  glass               :string(255)
#  price               :integer
#  created_at          :datetime
#  updated_at          :datetime
#  bar                 :string(255)
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  bar_id_id           :integer
#  bar_id              :integer
#

class Drink < ActiveRecord::Base
	# searchability!
	# include PgSearch
	#   multisearchable against: :list
	# include PgSearch
 #  	pg_search_scope :search_list, :against => [:list]


	# set up association between models
	belongs_to :user
	belongs_to :bar

	# stuff that paperclip wants
	has_attached_file :avatar, :styles => 
		{ :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	def self.search(search)
	  if search
	    where('list LIKE ?', "%#{search}%")
	  else
	    all
	  end
	end
end

