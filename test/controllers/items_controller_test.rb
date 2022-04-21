require "test_helper"

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get _items_url
    assert_response :success
  end

  test "should get new" do
    get new__item_url
    assert_response :success
  end

  test "should create item" do
    assert_difference("Item.count") do
      post _items_url, params: { item: { description: @item.description, image: @item.image, name: @item.name, proce: @item.proce } }
    end

    assert_redirected_to _item_url(Item.last)
  end

  test "should show item" do
    get _item_url(@item)
    assert_response :success
  end

  test "should get edit" do
    get edit__item_url(@item)
    assert_response :success
  end

  test "should update item" do
    patch _item_url(@item), params: { item: { description: @item.description, image: @item.image, name: @item.name, proce: @item.proce } }
    assert_redirected_to _item_url(@item)
  end

  test "should destroy item" do
    assert_difference("Item.count", -1) do
      delete _item_url(@item)
    end

    assert_redirected_to _items_url
  end
end
