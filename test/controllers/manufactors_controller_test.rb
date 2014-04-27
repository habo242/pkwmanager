require 'test_helper'

class ManufactorsControllerTest < ActionController::TestCase
  setup do
    @manufactor = manufactors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manufactors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manufactor" do
    assert_difference('Manufactor.count') do
      post :create, manufactor: { manufactor: @manufactor.manufactor }
    end

    assert_redirected_to manufactor_path(assigns(:manufactor))
  end

  test "should show manufactor" do
    get :show, id: @manufactor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manufactor
    assert_response :success
  end

  test "should update manufactor" do
    patch :update, id: @manufactor, manufactor: { manufactor: @manufactor.manufactor }
    assert_redirected_to manufactor_path(assigns(:manufactor))
  end

  test "should destroy manufactor" do
    assert_difference('Manufactor.count', -1) do
      delete :destroy, id: @manufactor
    end

    assert_redirected_to manufactors_path
  end
end
