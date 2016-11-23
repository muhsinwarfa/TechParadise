class User < ActiveRecord::Base
	has_many :ideas
	validates :name , presence: true , uniqueness:true
	has_secure_password()
end
