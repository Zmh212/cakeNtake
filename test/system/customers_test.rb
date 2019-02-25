require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Addlnotes", with: @customer.addlnotes
    fill_in "Address1", with: @customer.address1
    fill_in "Address2", with: @customer.address2
    fill_in "City", with: @customer.city
    fill_in "Email", with: @customer.email
    fill_in "Firstname", with: @customer.firstname
    fill_in "Lastname", with: @customer.lastname
    fill_in "Phone", with: @customer.phone
    fill_in "Rewardpoints", with: @customer.rewardpoints
    fill_in "State", with: @customer.state
    fill_in "Zip", with: @customer.zip
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Addlnotes", with: @customer.addlnotes
    fill_in "Address1", with: @customer.address1
    fill_in "Address2", with: @customer.address2
    fill_in "City", with: @customer.city
    fill_in "Email", with: @customer.email
    fill_in "Firstname", with: @customer.firstname
    fill_in "Lastname", with: @customer.lastname
    fill_in "Phone", with: @customer.phone
    fill_in "Rewardpoints", with: @customer.rewardpoints
    fill_in "State", with: @customer.state
    fill_in "Zip", with: @customer.zip
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
