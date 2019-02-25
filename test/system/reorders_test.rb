require "application_system_test_case"

class ReordersTest < ApplicationSystemTestCase
  setup do
    @reorder = reorders(:one)
  end

  test "visiting the index" do
    visit reorders_url
    assert_selector "h1", text: "Reorders"
  end

  test "creating a Reorder" do
    visit reorders_url
    click_on "New Reorder"

    fill_in "Expecteddelivery", with: @reorder.expecteddelivery
    fill_in "Product", with: @reorder.product_id
    fill_in "Qtyorder", with: @reorder.qtyorder
    fill_in "Reorderdate", with: @reorder.reorderdate
    click_on "Create Reorder"

    assert_text "Reorder was successfully created"
    click_on "Back"
  end

  test "updating a Reorder" do
    visit reorders_url
    click_on "Edit", match: :first

    fill_in "Expecteddelivery", with: @reorder.expecteddelivery
    fill_in "Product", with: @reorder.product_id
    fill_in "Qtyorder", with: @reorder.qtyorder
    fill_in "Reorderdate", with: @reorder.reorderdate
    click_on "Update Reorder"

    assert_text "Reorder was successfully updated"
    click_on "Back"
  end

  test "destroying a Reorder" do
    visit reorders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reorder was successfully destroyed"
  end
end
