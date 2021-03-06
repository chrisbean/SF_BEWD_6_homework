# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  sang       :string(255)
#  info       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  label_id   :integer
#

class Artist < ActiveRecord::Base
	has_many :songs
	belongs_to :label
	validates :name, presence: true,
										length: { minimum: 1 }
end
