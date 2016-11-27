require 'test_helper'

class IdeaTest < ActiveSupport::TestCase

	setup do
    	@idea = ideas(:Instagram)
    	@idea.idea_name = "Instagram"
    	@idea.idea_description = "A Web app that edit and share photos with friends and family"
    	@idea.additional_info = "Looking for a Web Developer who can develop with our company"
    	@idea.platform_id = 1
    	@idea.role_id = 1
    	@idea.user_id = 1
  	end

  
  	test "should be valid" do
  		assert @idea.valid?
  	end

  	test "idea name should be present" do
  		@idea.idea_name = ""
  		assert_not @idea.valid?
  	end

  	test "idea description should be present" do
  		@idea.idea_description = ""
  		assert_not @idea.valid?
  	end

  	test "additional info should be present" do
  		@idea.additional_info = ""
  		assert_not @idea.valid?
  	end

  	test "platform id should be an integer greater than 0" do
  		@idea.platform_id = -1
  		assert_not @idea.valid?	
  	end






end
