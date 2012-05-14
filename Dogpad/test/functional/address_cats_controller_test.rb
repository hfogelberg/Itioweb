require 'test_helper'

class AddressCatsControllerTest < ActionController::TestCase
  setup do
    @address_cat = address_cats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:address_cats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address_cat" do
    assert_difference('AddressCat.count') do
      post :create, address_cat: { name: @address_cat.name }
    end

    assert_redirected_to address_cat_path(assigns(:address_cat))
  end

  test "should show address_cat" do
    get :show, id: @address_cat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address_cat
    assert_response :success
  end

  test "should update address_cat" do
    put :update, id: @address_cat, address_cat: { name: @address_cat.name }
    assert_redirected_to address_cat_path(assigns(:address_cat))
  end

  test "should destroy address_cat" do
    assert_difference('AddressCat.count', -1) do
      delete :destroy, id: @address_cat
    end

    assert_redirected_to address_cats_path
  end
end
