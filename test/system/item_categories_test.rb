require "application_system_test_case"

class ItemCategoriesTest < ApplicationSystemTestCase
  setup do
    @item_category = item_categories(:one)
  end

  test "visiting the index" do
    visit item_categories_url
    assert_selector "h1", text: "Item categories"
  end

  test "should create item category" do
    visit item_categories_url
    click_on "New item category"

    fill_in "Category", with: @item_category.category_id
    fill_in "Item", with: @item_category.item_id
    click_on "Create Item category"

    assert_text "Item category was successfully created"
    click_on "Back"
  end

  test "should update Item category" do
    visit item_category_url(@item_category)
    click_on "Edit this item category", match: :first

    fill_in "Category", with: @item_category.category_id
    fill_in "Item", with: @item_category.item_id
    click_on "Update Item category"

    assert_text "Item category was successfully updated"
    click_on "Back"
  end

  test "should destroy Item category" do
    visit item_category_url(@item_category)
    click_on "Destroy this item category", match: :first

    assert_text "Item category was successfully destroyed"
  end
end
