class Platfrom < ActiveRecord::Base
	has_many :ideas

	
	validates :platform_name, presence: true, length: {maximum: 20}
end
