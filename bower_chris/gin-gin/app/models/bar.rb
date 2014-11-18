# == Schema Information
#
# Table name: bars
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  neighborhood :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Bar < ActiveRecord::Base
	has_many :drinks

	validates :name, presence: true,
						length: { minimum: 1 }
end
