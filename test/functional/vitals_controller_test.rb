require 'test_helper'

class VitalsControllerTest < ActionController::TestCase
  setup do
    @vital = vitals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vitals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vital" do
    assert_difference('Vital.count') do
      post :create, vital: { hp: @vital.hp, mp: @vital.mp, sp: @vital.sp, user_id: @vital.user_id }
    end

    assert_redirected_to vital_path(assigns(:vital))
  end

  test "should show vital" do
    get :show, id: @vital
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vital
    assert_response :success
  end

  test "should update vital" do
    put :update, id: @vital, vital: { hp: @vital.hp, mp: @vital.mp, sp: @vital.sp, user_id: @vital.user_id }
    assert_redirected_to vital_path(assigns(:vital))
  end

  test "should destroy vital" do
    assert_difference('Vital.count', -1) do
      delete :destroy, id: @vital
    end

    assert_redirected_to vitals_path
  end
end
