require "test_helper"

class UserHouseholdLedgersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_household_ledger = user_household_ledgers(:one)
  end

  test "should get index" do
    get user_household_ledgers_url
    assert_response :success
  end

  test "should get new" do
    get new_user_household_ledger_url
    assert_response :success
  end

  test "should create user_household_ledger" do
    assert_difference('UserHouseholdLedger.count') do
      post user_household_ledgers_url, params: { user_household_ledger: { balance: @user_household_ledger.balance, user_id: @user_household_ledger.user_id } }
    end

    assert_redirected_to user_household_ledger_url(UserHouseholdLedger.last)
  end

  test "should show user_household_ledger" do
    get user_household_ledger_url(@user_household_ledger)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_household_ledger_url(@user_household_ledger)
    assert_response :success
  end

  test "should update user_household_ledger" do
    patch user_household_ledger_url(@user_household_ledger), params: { user_household_ledger: { balance: @user_household_ledger.balance, user_id: @user_household_ledger.user_id } }
    assert_redirected_to user_household_ledger_url(@user_household_ledger)
  end

  test "should destroy user_household_ledger" do
    assert_difference('UserHouseholdLedger.count', -1) do
      delete user_household_ledger_url(@user_household_ledger)
    end

    assert_redirected_to user_household_ledgers_url
  end
end
