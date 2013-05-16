require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { address: @user.address, biography: @user.biography, birthday: @user.birthday, birthmonth: @user.birthmonth, birthyear: @user.birthyear, cid: @user.cid, country_id: @user.country_id, is_coach: @user.is_coach, name: @user.name, phone: @user.phone, slug: @user.slug, state_id: @user.state_id, town: @user.town, username: @user.username, website: @user.website }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { address: @user.address, biography: @user.biography, birthday: @user.birthday, birthmonth: @user.birthmonth, birthyear: @user.birthyear, cid: @user.cid, country_id: @user.country_id, is_coach: @user.is_coach, name: @user.name, phone: @user.phone, slug: @user.slug, state_id: @user.state_id, town: @user.town, username: @user.username, website: @user.website }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
