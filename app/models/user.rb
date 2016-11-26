class User < ActiveRecord::Base
	has_many :ideas


    validates :name, presence: true, length: {maximum: 50}
    validates :email, presence: true, length: {maximum: 255}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }

    scope :newest_first, -> { order("created_at DESC")}
    scope :oldest_first , -> { order("created_at ASC")}
    


    before_save { self.email = email.downcase }
    has_secure_password
end
