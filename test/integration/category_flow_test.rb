require "test_helper"

class CategoryFlowTest < ActionDispatch::IntegrationTest
  test "can see the categories header" do
    get "/categories"
    assert_select "h1", "Categories"
  end

  test "can see category details" do
    c = Category.first
    get "/categories/#{c.id}"
    assert_select "h1", "Category Details"
  end
end
