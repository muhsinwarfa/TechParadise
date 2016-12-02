class Role < ActiveRecord::Base
	has_many :ideas
	# has_many :users , through: :ideas
	validates :skill_name, presence: true, length: {maximum: 20}
	scope :apply , lambda {where(:filled => false)}
end
