require "application_system_test_case"

class DepositeAndWithdrawalCategoriesTest < ApplicationSystemTestCase
  setup do
    @deposite_and_withdrawal_category = deposite_and_withdrawal_categories(:one)
  end

  test "visiting the index" do
    visit deposite_and_withdrawal_categories_url
    assert_selector "h1", text: "Deposite And Withdrawal Categories"
  end

  test "creating a Deposite and withdrawal category" do
    visit deposite_and_withdrawal_categories_url
    click_on "New Deposite And Withdrawal Category"

    fill_in "Name", with: @deposite_and_withdrawal_category.name
    click_on "Create Deposite and withdrawal category"

    assert_text "Deposite and withdrawal category was successfully created"
    click_on "Back"
  end

  test "updating a Deposite and withdrawal category" do
    visit deposite_and_withdrawal_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @deposite_and_withdrawal_category.name
    click_on "Update Deposite and withdrawal category"

    assert_text "Deposite and withdrawal category was successfully updated"
    click_on "Back"
  end

  test "destroying a Deposite and withdrawal category" do
    visit deposite_and_withdrawal_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deposite and withdrawal category was successfully destroyed"
  end
end
