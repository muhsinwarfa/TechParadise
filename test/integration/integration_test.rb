require 'test_helper'

class IntegrationTest < ActionDispatch::IntegrationTest
    
    test "login" do
        get login_path
        assert_response :success
        assert_template "sessions/new"
        post_via_redirect login_path, session: {email: "tartan@cmu.edu", password: "foobar"}
        get root_path
        assert flash.empty?
    end
end