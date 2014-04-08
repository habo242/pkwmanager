require 'test_helper'

class PkwsControllerTest < ActionController::TestCase
  setup do
    @pkw = pkws(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pkws)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pkw" do
    assert_difference('Pkw.count') do
      post :create, pkw: { kilometerstand: @pkw.kilometerstand, marke: @pkw.marke, modell: @pkw.modell, tüv: @pkw.tüv }
    end

    assert_redirected_to pkw_path(assigns(:pkw))
  end

  test "should show pkw" do
    get :show, id: @pkw
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pkw
    assert_response :success
  end

  test "should update pkw" do
    patch :update, id: @pkw, pkw: { kilometerstand: @pkw.kilometerstand, marke: @pkw.marke, modell: @pkw.modell, tüv: @pkw.tüv }
    assert_redirected_to pkw_path(assigns(:pkw))
  end

  test "should destroy pkw" do
    assert_difference('Pkw.count', -1) do
      delete :destroy, id: @pkw
    end

    assert_redirected_to pkws_path
  end
end
