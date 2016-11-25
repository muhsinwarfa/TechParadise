class Role < ActiveRecord::Base
	has_many :ideas

	validates :skill_name, presence: true, length: {maximum: 20}
end
