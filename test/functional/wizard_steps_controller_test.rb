require 'test_helper'

class WizardStepsControllerTest < ActionController::TestCase
  setup do
    @wizard_step = wizard_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wizard_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wizard_step" do
    assert_difference('WizardStep.count') do
      post :create, wizard_step: { name: @wizard_step.name, order: @wizard_step.order }
    end

    assert_redirected_to wizard_step_path(assigns(:wizard_step))
  end

  test "should show wizard_step" do
    get :show, id: @wizard_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wizard_step
    assert_response :success
  end

  test "should update wizard_step" do
    put :update, id: @wizard_step, wizard_step: { name: @wizard_step.name, order: @wizard_step.order }
    assert_redirected_to wizard_step_path(assigns(:wizard_step))
  end

  test "should destroy wizard_step" do
    assert_difference('WizardStep.count', -1) do
      delete :destroy, id: @wizard_step
    end

    assert_redirected_to wizard_steps_path
  end
end
