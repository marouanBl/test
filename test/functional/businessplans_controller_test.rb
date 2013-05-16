require 'test_helper'

class BusinessplansControllerTest < ActionController::TestCase
  setup do
    @businessplan = businessplans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:businessplans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create businessplan" do
    assert_difference('Businessplan.count') do
      post :create, businessplan: { order: @businessplan.order, status: @businessplan.status, wizard_answer: @businessplan.wizard_answer, wizard_question: @businessplan.wizard_question, wizard_step_id: @businessplan.wizard_step_id }
    end

    assert_redirected_to businessplan_path(assigns(:businessplan))
  end

  test "should show businessplan" do
    get :show, id: @businessplan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @businessplan
    assert_response :success
  end

  test "should update businessplan" do
    put :update, id: @businessplan, businessplan: { order: @businessplan.order, status: @businessplan.status, wizard_answer: @businessplan.wizard_answer, wizard_question: @businessplan.wizard_question, wizard_step_id: @businessplan.wizard_step_id }
    assert_redirected_to businessplan_path(assigns(:businessplan))
  end

  test "should destroy businessplan" do
    assert_difference('Businessplan.count', -1) do
      delete :destroy, id: @businessplan
    end

    assert_redirected_to businessplans_path
  end
end
