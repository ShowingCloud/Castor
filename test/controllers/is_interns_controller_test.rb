require 'test_helper'

class IsInternsControllerTest < ActionController::TestCase
  setup do
    @is_intern = is_interns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:is_interns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create is_intern" do
    assert_difference('IsIntern.count') do
      post :create, is_intern: { is_intern: @is_intern.is_intern }
    end

    assert_redirected_to is_intern_path(assigns(:is_intern))
  end

  test "should show is_intern" do
    get :show, id: @is_intern
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @is_intern
    assert_response :success
  end

  test "should update is_intern" do
    patch :update, id: @is_intern, is_intern: { is_intern: @is_intern.is_intern }
    assert_redirected_to is_intern_path(assigns(:is_intern))
  end

  test "should destroy is_intern" do
    assert_difference('IsIntern.count', -1) do
      delete :destroy, id: @is_intern
    end

    assert_redirected_to is_interns_path
  end
end
