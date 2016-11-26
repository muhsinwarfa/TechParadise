class Idea < ActiveRecord::Base
	belongs_to :platform
	belongs_to :role
	belongs_to :user

	validates :idea_name, :idea_description , :additional_info , :platform_id, :role_id , :user_id, presence: true
	validates :platform_id ,:role_id  , :user_id , numericality: {greater_than_or_equal_to: 0}

	default_scope {joins(:platform, :role).pluck(":idea_name ,:platform_name,:skill_name")}
    scope :newest_first, -> { order("created_at DESC")}
    scope :oldest_first , -> { order("created_at ASC")}
    scope :names_descending, -> {order("idea_name DESC")}
    scope :names_ascending, -> {order("idea_name ASC")}
    scope :only_platform, ->  {joins(:platform, :role).pluck(":idea_name ,:platform_name")}
    scope :only_help_needed, -> {joins(:platform, :role).pluck(":idea_name ,:skill_name")}

end
