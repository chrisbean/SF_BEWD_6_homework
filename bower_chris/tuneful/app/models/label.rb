# == Schema Information
#
# Table name: labels
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Label < ActiveRecord::Base
	has_many :songs
	has_many :artists
end
