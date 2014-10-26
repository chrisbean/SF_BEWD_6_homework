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
<<<<<<< HEAD
	belongs_to :artist
	validates :tune, presence: true,
                   length: { minimum: 1 }
=======
	validates :tune, presence: true,
                    length: { minimum: 1 }
>>>>>>> 9664255d6cab49526e99670a9adc29ee28360614
end
