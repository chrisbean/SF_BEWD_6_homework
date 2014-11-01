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
#

class Artist < ActiveRecord::Base
	has_many :songs
	validates :name, presence: true,
                   length: { minimum: 1 }
end
