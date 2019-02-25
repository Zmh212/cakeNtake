require 'test_helper'

class PurchasedetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchasedetail = purchasedetails(:one)
  end

  test "should get index" do
    get purchasedetails_url
    assert_response :success
  end

  test "should get new" do
    get new_purchasedetail_url
    assert_response :success
  end

  test "should create purchasedetail" do
    assert_difference('Purchasedetail.count') do
      post purchasedetails_url, params: { purchasedetail: { product_id: @purchasedetail.product_id, purchase_id: @purchasedetail.purchase_id, saleprice: @purchasedetail.saleprice } }
    end

    assert_redirected_to purchasedetail_url(Purchasedetail.last)
  end

  test "should show purchasedetail" do
    get purchasedetail_url(@purchasedetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_purchasedetail_url(@purchasedetail)
    assert_response :success
  end

  test "should update purchasedetail" do
    patch purchasedetail_url(@purchasedetail), params: { purchasedetail: { product_id: @purchasedetail.product_id, purchase_id: @purchasedetail.purchase_id, saleprice: @purchasedetail.saleprice } }
    assert_redirected_to purchasedetail_url(@purchasedetail)
  end

  test "should destroy purchasedetail" do
    assert_difference('Purchasedetail.count', -1) do
      delete purchasedetail_url(@purchasedetail)
    end

    assert_redirected_to purchasedetails_url
  end
end
