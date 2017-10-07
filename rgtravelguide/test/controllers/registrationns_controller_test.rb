require 'test_helper'

class RegistrationnsControllerTest < ActionController::TestCase
  setup do
    @registrationn = registrationns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registrationns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registrationn" do
    assert_difference('Registrationn.count') do
      post :create, registrationn: { address: @registrationn.address, age: @registrationn.age, e-mail: @registrationn.e-mail, name: @registrationn.name }
    end

    assert_redirected_to registrationn_path(assigns(:registrationn))
  end

  test "should show registrationn" do
    get :show, id: @registrationn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registrationn
    assert_response :success
  end

  test "should update registrationn" do
    patch :update, id: @registrationn, registrationn: { address: @registrationn.address, age: @registrationn.age, e-mail: @registrationn.e-mail, name: @registrationn.name }
    assert_redirected_to registrationn_path(assigns(:registrationn))
  end

  test "should destroy registrationn" do
    assert_difference('Registrationn.count', -1) do
      delete :destroy, id: @registrationn
    end

    assert_redirected_to registrationns_path
  end
end
