require 'test_helper'

class WeddingsControllerTest < ActionController::TestCase
  setup do
    @wedding = weddings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weddings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wedding" do
    assert_difference('Wedding.count') do
      post :create, wedding: @wedding.attributes
    end

    assert_redirected_to wedding_path(assigns(:wedding))
  end

  test "should show wedding" do
    get :show, id: @wedding.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wedding.to_param
    assert_response :success
  end

  test "should update wedding" do
    put :update, id: @wedding.to_param, wedding: @wedding.attributes
    assert_redirected_to wedding_path(assigns(:wedding))
  end

  test "should destroy wedding" do
    assert_difference('Wedding.count', -1) do
      delete :destroy, id: @wedding.to_param
    end

    assert_redirected_to weddings_path
  end
end
