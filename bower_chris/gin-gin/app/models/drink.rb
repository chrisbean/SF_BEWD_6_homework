class Drink < ActiveRecord::Base
	# searchability!
	# include PgSearch
	#   multisearchable against: :list
	# include PgSearch
 #  	pg_search_scope :search_list, :against => [:list]


	# set up association between models
	belongs_to :user

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

