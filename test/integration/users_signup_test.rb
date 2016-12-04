require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: { name:  "",
                               email: "user@invalid",
                               password:              "foo",
                               password_confirmation: "bar",
                               admin: true}
    end
    assert_template 'users/new'
  end
  
  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: { name:  "Example User",
                                            email: "user@example.com",
                                            password:              "password",
                                            password_confirmation: "password" }
    end
    assert_template 'users/show'
  end
  
  # ------------------------------------------
  test  "login  with  admin  followed  by  logout"  do 
     get  new_session_path
     post  sessions_path,  session:  {  email:  "tartan@cmu.edu",  password:  'foobar'  }
     assert  is_logged_in?  
     assert_redirected_to  @user  
     follow_redirect!   
     assert_template  'users/show'   
     assert_select  "a[href=?]",  logout_path   
     delete  logout_path   
     assert_not  is_logged_in?   
     assert_redirected_to  root_url   
     follow_redirect!   
     assert_select  "a[href=?]",  login_path  
  end 
  

  
  
  
end