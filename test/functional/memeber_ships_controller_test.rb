require 'test_helper'

class MemeberShipsControllerTest < ActionController::TestCase
  setup do
    @memeber_ship = memeber_ships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:memeber_ships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create memeber_ship" do
    assert_difference('MemeberShip.count') do
      post :create, :memeber_ship => @memeber_ship.attributes
    end

    assert_redirected_to memeber_ship_path(assigns(:memeber_ship))
  end

  test "should show memeber_ship" do
    get :show, :id => @memeber_ship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @memeber_ship.to_param
    assert_response :success
  end

  test "should update memeber_ship" do
    put :update, :id => @memeber_ship.to_param, :memeber_ship => @memeber_ship.attributes
    assert_redirected_to memeber_ship_path(assigns(:memeber_ship))
  end

  test "should destroy memeber_ship" do
    assert_difference('MemeberShip.count', -1) do
      delete :destroy, :id => @memeber_ship.to_param
    end

    assert_redirected_to memeber_ships_path
  end
end
