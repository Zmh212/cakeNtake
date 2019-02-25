require 'test_helper'

class ProdingrediantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prodingrediant = prodingrediants(:one)
  end

  test "should get index" do
    get prodingrediants_url
    assert_response :success
  end

  test "should get new" do
    get new_prodingrediant_url
    assert_response :success
  end

  test "should create prodingrediant" do
    assert_difference('Prodingrediant.count') do
      post prodingrediants_url, params: { prodingrediant: { categoryname: @prodingrediant.categoryname, notes: @prodingrediant.notes, productname: @prodingrediant.productname, quantity: @prodingrediant.quantity } }
    end

    assert_redirected_to prodingrediant_url(Prodingrediant.last)
  end

  test "should show prodingrediant" do
    get prodingrediant_url(@prodingrediant)
    assert_response :success
  end

  test "should get edit" do
    get edit_prodingrediant_url(@prodingrediant)
    assert_response :success
  end

  test "should update prodingrediant" do
    patch prodingrediant_url(@prodingrediant), params: { prodingrediant: { categoryname: @prodingrediant.categoryname, notes: @prodingrediant.notes, productname: @prodingrediant.productname, quantity: @prodingrediant.quantity } }
    assert_redirected_to prodingrediant_url(@prodingrediant)
  end

  test "should destroy prodingrediant" do
    assert_difference('Prodingrediant.count', -1) do
      delete prodingrediant_url(@prodingrediant)
    end

    assert_redirected_to prodingrediants_url
  end
end
