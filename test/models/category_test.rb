require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "should not save category without name" do
    category = Category.new
    assert_not category.save, "Saved order without name"
  end

  test "should not save category with same name" do
    category = Category.new(name:"Clothing")
    category2 = Category.new(name:"Clothing")
    category.save 
    assert_not category2.save, "Saved 2 categories with same name"
  end

  test "Name must be unique and case insensitive" do
    category = Category.new(name:"Clothing")
    category2 = Category.new(name:"clOthinG")
    category.save 
    assert_not category2.save, "Saved 2 categories with same name (case insensitive)"
  end

end