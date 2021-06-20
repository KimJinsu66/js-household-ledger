require "test_helper"

class DepositeAndWithdrawalCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deposite_and_withdrawal_category = deposite_and_withdrawal_categories(:one)
  end

  test "should get index" do
    get deposite_and_withdrawal_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_deposite_and_withdrawal_category_url
    assert_response :success
  end

  test "should create deposite_and_withdrawal_category" do
    assert_difference('DepositeAndWithdrawalCategory.count') do
      post deposite_and_withdrawal_categories_url, params: { deposite_and_withdrawal_category: { name: @deposite_and_withdrawal_category.name } }
    end

    assert_redirected_to deposite_and_withdrawal_category_url(DepositeAndWithdrawalCategory.last)
  end

  test "should show deposite_and_withdrawal_category" do
    get deposite_and_withdrawal_category_url(@deposite_and_withdrawal_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_deposite_and_withdrawal_category_url(@deposite_and_withdrawal_category)
    assert_response :success
  end

  test "should update deposite_and_withdrawal_category" do
    patch deposite_and_withdrawal_category_url(@deposite_and_withdrawal_category), params: { deposite_and_withdrawal_category: { name: @deposite_and_withdrawal_category.name } }
    assert_redirected_to deposite_and_withdrawal_category_url(@deposite_and_withdrawal_category)
  end

  test "should destroy deposite_and_withdrawal_category" do
    assert_difference('DepositeAndWithdrawalCategory.count', -1) do
      delete deposite_and_withdrawal_category_url(@deposite_and_withdrawal_category)
    end

    assert_redirected_to deposite_and_withdrawal_categories_url
  end
end
