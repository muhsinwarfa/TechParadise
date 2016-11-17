class Idea < ActiveRecord::Base
	belongs_to :role
	belongs_to :user
	belongs_to :platform
	
end
