require 'test_helper'

class IdeasControllerTest < ActionController::TestCase
  setup do
      @idea = ideas(:Instagram)
    	@idea.idea_name = "Instagram"
    	@idea.idea_description = "A Web app that edit and share photos with friends and family"
    	@idea.additional_info = "Looking for a Web Developer who can develop with our company"
    	@idea.platform_id = 1
    	@idea.role_id = 1
    	@idea.user_id = 1
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ideas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idea" do
    assert_difference('Idea.count') do
      post :create, idea: {  }
    end

    assert_redirected_to idea_path(assigns(:idea))
  end

  test "should show idea" do
    get :show, id: @idea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idea
    assert_response :success
  end

  test "should update idea" do
    patch :update, id: @idea, idea: {  }
    assert_redirected_to idea_path(assigns(:idea))
  end

  test "should destroy idea" do
    assert_difference('Idea.count', -1) do
      delete :destroy, id: @idea
    end

    assert_redirected_to ideas_path
  end
end
