require 'test_helper'

class MoshikomisControllerTest < ActionController::TestCase
  setup do
    @moshikomi = moshikomis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moshikomis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moshikomi" do
    assert_difference('Moshikomi.count') do
      post :create, :moshikomi => @moshikomi.attributes
    end

    assert_redirected_to moshikomi_path(assigns(:moshikomi))
  end

  test "should show moshikomi" do
    get :show, :id => @moshikomi.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @moshikomi.to_param
    assert_response :success
  end

  test "should update moshikomi" do
    put :update, :id => @moshikomi.to_param, :moshikomi => @moshikomi.attributes
    assert_redirected_to moshikomi_path(assigns(:moshikomi))
  end

  test "should destroy moshikomi" do
    assert_difference('Moshikomi.count', -1) do
      delete :destroy, :id => @moshikomi.to_param
    end

    assert_redirected_to moshikomis_path
  end
end
