class Bar < ActiveRecord::Base
	has_many :drinks

	validates :name, presence: true,
						length: { minimum: 1 }
end
