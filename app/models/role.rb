class Role < ActiveRecord::Base
	has_many :ideas
	belongs_to :user
	validates :skill_name, presence: true, length: {maximum: 20}
	scope :open , lambda {where(:filled => false)}
end
