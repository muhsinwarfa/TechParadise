class User < ActiveRecord::Base
	has_many :ideas
# 	has_many :roles , through: :ideas
    validates :name, presence: true, length: {maximum: 50}
    validates :email, presence: true, length: {maximum: 255}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }

    validates :password , length: {minimum: 6}

    


    before_save { self.email = email.downcase }
    has_secure_password
end
