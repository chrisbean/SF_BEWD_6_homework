# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  tune       :string(255)
#  singer     :string(255)
#  company    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Song < ActiveRecord::Base
	belongs_to :singer
	validates :tune, presence: true,
                   length: { minimum: 1 }
end
