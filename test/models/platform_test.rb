require 'test_helper'

class PlatformTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  	setup do
    	@platform = platforms(:WebApp)
  	end


  	test "should be valid" do
  		assert @platform.valid?
  	end

  	test "platform name should be present" do
  		@platform.platform_name = ""
  		assert_not @platform.valid?
 	end

 	test "platform name should not be too long" do
  		@platform.platform_name= "a" * 21 
  		assert_not @platform.valid?
  	end
end
