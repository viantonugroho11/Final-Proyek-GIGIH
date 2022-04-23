require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = categories(:one)
  end

  test "should get index" do
    get _categories_url
    assert_response :success
  end

  test "should get new" do
    get new__category_url
    assert_response :success
  end

  test "should create category" do
    assert_difference("Category.count") do
      post _categories_url, params: { category: { name: @category.name } }
    end

    assert_redirected_to _category_url(Category.last)
  end

  test "should show category" do
    get _category_url(@category)
    assert_response :success
  end

  test "should get edit" do
    get edit__category_url(@category)
    assert_response :success
  end

  test "should update category" do
    patch _category_url(@category), params: { category: { name: @category.name } }
    assert_redirected_to _category_url(@category)
  end

  test "should destroy category" do
    assert_difference("Category.count", -1) do
      delete _category_url(@category)
    end

    assert_redirected_to _categories_url
  end
end
