require "test_helper"

class ItemCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_category = item_categories(:one)
  end

  test "should get index" do
    get _item_categories_url
    assert_response :success
  end

  test "should get new" do
    get new__item_category_url
    assert_response :success
  end

  test "should create item_category" do
    assert_difference("ItemCategory.count") do
      post _item_categories_url, params: { item_category: { category_id: @item_category.category_id, item_id: @item_category.item_id } }
    end

    assert_redirected_to _item_category_url(ItemCategory.last)
  end

  test "should show item_category" do
    get _item_category_url(@item_category)
    assert_response :success
  end

  test "should get edit" do
    get edit__item_category_url(@item_category)
    assert_response :success
  end

  test "should update item_category" do
    patch _item_category_url(@item_category), params: { item_category: { category_id: @item_category.category_id, item_id: @item_category.item_id } }
    assert_redirected_to _item_category_url(@item_category)
  end

  test "should destroy item_category" do
    assert_difference("ItemCategory.count", -1) do
      delete _item_category_url(@item_category)
    end

    assert_redirected_to _item_categories_url
  end
end
