require 'test_helper'

class SubjectionsControllerTest < ActionController::TestCase
  setup do
    @subjection = subjections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subjections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subjection" do
    assert_difference('Subjection.count') do
      post :create, subjection: { subjection: @subjection.subjection }
    end

    assert_redirected_to subjection_path(assigns(:subjection))
  end

  test "should show subjection" do
    get :show, id: @subjection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subjection
    assert_response :success
  end

  test "should update subjection" do
    patch :update, id: @subjection, subjection: { subjection: @subjection.subjection }
    assert_redirected_to subjection_path(assigns(:subjection))
  end

  test "should destroy subjection" do
    assert_difference('Subjection.count', -1) do
      delete :destroy, id: @subjection
    end

    assert_redirected_to subjections_path
  end
end
