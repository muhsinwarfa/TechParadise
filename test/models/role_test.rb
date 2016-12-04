require 'test_helper'

class RoleTest < ActiveSupport::TestCase
	setup do
    	@role = roles(:Webdeveloper)
    	@role.filled = false
  	end


  	test "should be valid" do
  		assert @role.valid?
  	end

  	test "role name should be present" do
  		@role.skill_name = ""
  		assert_not @role.valid?
 	end

 	test "role name should not be too long" do
  		@role.skill_name = "a" * 21 
  		assert_not @role.valid?
  	end

  	
  
end
