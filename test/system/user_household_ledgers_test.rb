require "application_system_test_case"

class UserHouseholdLedgersTest < ApplicationSystemTestCase
  setup do
    @user_household_ledger = user_household_ledgers(:one)
  end

  test "visiting the index" do
    visit user_household_ledgers_url
    assert_selector "h1", text: "User Household Ledgers"
  end

  test "creating a User household ledger" do
    visit user_household_ledgers_url
    click_on "New User Household Ledger"

    fill_in "Balance", with: @user_household_ledger.balance
    fill_in "User", with: @user_household_ledger.user_id
    click_on "Create User household ledger"

    assert_text "User household ledger was successfully created"
    click_on "Back"
  end

  test "updating a User household ledger" do
    visit user_household_ledgers_url
    click_on "Edit", match: :first

    fill_in "Balance", with: @user_household_ledger.balance
    fill_in "User", with: @user_household_ledger.user_id
    click_on "Update User household ledger"

    assert_text "User household ledger was successfully updated"
    click_on "Back"
  end

  test "destroying a User household ledger" do
    visit user_household_ledgers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User household ledger was successfully destroyed"
  end
end
