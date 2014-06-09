require 'test_helper'

class UserVerificationsControllerTest < ActionController::TestCase
  setup do
    @user_verification = user_verifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_verifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_verification" do
    assert_difference('UserVerification.count') do
      post :create, user_verification: { adress: @user_verification.adress, area: @user_verification.area, birthday: @user_verification.birthday, department: @user_verification.department, email: @user_verification.email, fax: @user_verification.fax, gender: @user_verification.gender, id_card: @user_verification.id_card, im: @user_verification.im, is_intern: @user_verification.is_intern, mobile: @user_verification.mobile, name: @user_verification.name, position: @user_verification.position, postcode: @user_verification.postcode, subjection: @user_verification.subjection, tel: @user_verification.tel }
    end

    assert_redirected_to user_verification_path(assigns(:user_verification))
  end

  test "should show user_verification" do
    get :show, id: @user_verification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_verification
    assert_response :success
  end

  test "should update user_verification" do
    patch :update, id: @user_verification, user_verification: { adress: @user_verification.adress, area: @user_verification.area, birthday: @user_verification.birthday, department: @user_verification.department, email: @user_verification.email, fax: @user_verification.fax, gender: @user_verification.gender, id_card: @user_verification.id_card, im: @user_verification.im, is_intern: @user_verification.is_intern, mobile: @user_verification.mobile, name: @user_verification.name, position: @user_verification.position, postcode: @user_verification.postcode, subjection: @user_verification.subjection, tel: @user_verification.tel }
    assert_redirected_to user_verification_path(assigns(:user_verification))
  end

  test "should destroy user_verification" do
    assert_difference('UserVerification.count', -1) do
      delete :destroy, id: @user_verification
    end

    assert_redirected_to user_verifications_path
  end
end
