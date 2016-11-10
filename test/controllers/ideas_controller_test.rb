require 'test_helper'

class IdeasControllerTest < ActionController::TestCase
  test "should get homepage" do
    get :homepage
    assert_response :success
  end

  test "should get idea_overview" do
    get :idea_overview
    assert_response :success
  end

  test "should get new_idea" do
    get :new_idea
    assert_response :success
  end

  test "should get edit_idea" do
    get :edit_idea
    assert_response :success
  end

end
