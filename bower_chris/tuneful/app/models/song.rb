# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  tune       :string(255)
#  company    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  artist_id  :integer
#  label_id   :integer
#

class Song < ActiveRecord::Base
	belongs_to :artist
	belongs_to :label
	validates :tune, presence: true,
										length: { minimum: 1 }
end
