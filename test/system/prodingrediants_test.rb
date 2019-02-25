require "application_system_test_case"

class ProdingrediantsTest < ApplicationSystemTestCase
  setup do
    @prodingrediant = prodingrediants(:one)
  end

  test "visiting the index" do
    visit prodingrediants_url
    assert_selector "h1", text: "Prodingrediants"
  end

  test "creating a Prodingrediant" do
    visit prodingrediants_url
    click_on "New Prodingrediant"

    fill_in "Categoryname", with: @prodingrediant.categoryname
    fill_in "Notes", with: @prodingrediant.notes
    fill_in "Productname", with: @prodingrediant.productname
    fill_in "Quantity", with: @prodingrediant.quantity
    click_on "Create Prodingrediant"

    assert_text "Prodingrediant was successfully created"
    click_on "Back"
  end

  test "updating a Prodingrediant" do
    visit prodingrediants_url
    click_on "Edit", match: :first

    fill_in "Categoryname", with: @prodingrediant.categoryname
    fill_in "Notes", with: @prodingrediant.notes
    fill_in "Productname", with: @prodingrediant.productname
    fill_in "Quantity", with: @prodingrediant.quantity
    click_on "Update Prodingrediant"

    assert_text "Prodingrediant was successfully updated"
    click_on "Back"
  end

  test "destroying a Prodingrediant" do
    visit prodingrediants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prodingrediant was successfully destroyed"
  end
end
