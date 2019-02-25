require "application_system_test_case"

class PurchasedetailsTest < ApplicationSystemTestCase
  setup do
    @purchasedetail = purchasedetails(:one)
  end

  test "visiting the index" do
    visit purchasedetails_url
    assert_selector "h1", text: "Purchasedetails"
  end

  test "creating a Purchasedetail" do
    visit purchasedetails_url
    click_on "New Purchasedetail"

    fill_in "Product", with: @purchasedetail.product_id
    fill_in "Purchase", with: @purchasedetail.purchase_id
    fill_in "Saleprice", with: @purchasedetail.saleprice
    click_on "Create Purchasedetail"

    assert_text "Purchasedetail was successfully created"
    click_on "Back"
  end

  test "updating a Purchasedetail" do
    visit purchasedetails_url
    click_on "Edit", match: :first

    fill_in "Product", with: @purchasedetail.product_id
    fill_in "Purchase", with: @purchasedetail.purchase_id
    fill_in "Saleprice", with: @purchasedetail.saleprice
    click_on "Update Purchasedetail"

    assert_text "Purchasedetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Purchasedetail" do
    visit purchasedetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Purchasedetail was successfully destroyed"
  end
end
