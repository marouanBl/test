require 'test_helper'

class StartprojectsControllerTest < ActionController::TestCase
  setup do
    @startproject = startprojects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:startprojects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create startproject" do
    assert_difference('Startproject.count') do
      post :create, startproject: {  }
    end

    assert_redirected_to startproject_path(assigns(:startproject))
  end

  test "should show startproject" do
    get :show, id: @startproject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @startproject
    assert_response :success
  end

  test "should update startproject" do
    put :update, id: @startproject, startproject: {  }
    assert_redirected_to startproject_path(assigns(:startproject))
  end

  test "should destroy startproject" do
    assert_difference('Startproject.count', -1) do
      delete :destroy, id: @startproject
    end

    assert_redirected_to startprojects_path
  end
end
