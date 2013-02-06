require 'test_helper'

class SociosControllerTest < ActionController::TestCase
  setup do
    @socio = socios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio" do
    assert_difference('Socio.count') do
      post :create, socio: { address: @socio.address, background: @socio.background, birthday: @socio.birthday, colony: @socio.colony, entry: @socio.entry, name: @socio.name, observations: @socio.observations, phone: @socio.phone, sex: @socio.sex }
    end

    assert_redirected_to socio_path(assigns(:socio))
  end

  test "should show socio" do
    get :show, id: @socio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio
    assert_response :success
  end

  test "should update socio" do
    put :update, id: @socio, socio: { address: @socio.address, background: @socio.background, birthday: @socio.birthday, colony: @socio.colony, entry: @socio.entry, name: @socio.name, observations: @socio.observations, phone: @socio.phone, sex: @socio.sex }
    assert_redirected_to socio_path(assigns(:socio))
  end

  test "should destroy socio" do
    assert_difference('Socio.count', -1) do
      delete :destroy, id: @socio
    end

    assert_redirected_to socios_path
  end
end
