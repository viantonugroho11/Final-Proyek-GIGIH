require "application_system_test_case"

class TransactionsTest < ApplicationSystemTestCase
  setup do
    @transaction = transactions(:one)
  end

  test "visiting the index" do
    visit transactions_url
    assert_selector "h1", text: "Transactions"
  end

  test "should create transaction" do
    visit transactions_url
    click_on "New transaction"

    fill_in "Address", with: @transaction.address
    fill_in "Count item", with: @transaction.count_item
    fill_in "Email", with: @transaction.email
    fill_in "Name", with: @transaction.name
    fill_in "No phone", with: @transaction.no_phone
    fill_in "Status", with: @transaction.status
    fill_in "Total price", with: @transaction.total_price
    click_on "Create Transaction"

    assert_text "Transaction was successfully created"
    click_on "Back"
  end

  test "should update Transaction" do
    visit transaction_url(@transaction)
    click_on "Edit this transaction", match: :first

    fill_in "Address", with: @transaction.address
    fill_in "Count item", with: @transaction.count_item
    fill_in "Email", with: @transaction.email
    fill_in "Name", with: @transaction.name
    fill_in "No phone", with: @transaction.no_phone
    fill_in "Status", with: @transaction.status
    fill_in "Total price", with: @transaction.total_price
    click_on "Update Transaction"

    assert_text "Transaction was successfully updated"
    click_on "Back"
  end

  test "should destroy Transaction" do
    visit transaction_url(@transaction)
    click_on "Destroy this transaction", match: :first

    assert_text "Transaction was successfully destroyed"
  end
end
