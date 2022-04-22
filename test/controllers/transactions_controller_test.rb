require "test_helper"

class TransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction = transactions(:one)
  end

  test "should get index" do
    get _transactions_url
    assert_response :success
  end

  test "should get new" do
    get new__transaction_url
    assert_response :success
  end

  test "should create transaction" do
    assert_difference("Transaction.count") do
      post _transactions_url, params: { transaction: { address: @transaction.address, count_item: @transaction.count_item, email: @transaction.email, name: @transaction.name, no_phone: @transaction.no_phone, status: @transaction.status, total_price: @transaction.total_price } }
    end

    assert_redirected_to _transaction_url(Transaction.last)
  end

  test "should show transaction" do
    get _transaction_url(@transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit__transaction_url(@transaction)
    assert_response :success
  end

  test "should update transaction" do
    patch _transaction_url(@transaction), params: { transaction: { address: @transaction.address, count_item: @transaction.count_item, email: @transaction.email, name: @transaction.name, no_phone: @transaction.no_phone, status: @transaction.status, total_price: @transaction.total_price } }
    assert_redirected_to _transaction_url(@transaction)
  end

  test "should destroy transaction" do
    assert_difference("Transaction.count", -1) do
      delete _transaction_url(@transaction)
    end

    assert_redirected_to _transactions_url
  end
end
