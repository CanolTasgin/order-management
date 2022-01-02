require "test_helper"

class OrderTest < ActiveSupport::TestCase
  test "should not save order without gross" do
    order = Order.new
    assert_not order.save, "Saved order without gross"
  end

  test "should not save order without currency" do
    c = Category.first
    order = Order.new(gross:70, discount:20,  category: c)
    assert_not order.save, "Saved order without currency"
  end

  test "gross must be bigger than discount" do
    c = Category.first
    order = Order.new(currency:'USD', gross:70, discount:90,  category: c)
    assert_not order.save, "Saved when discount is bigger than gross"
  end

  test "currency must be TR, EUR or USD" do
    c = Category.first
    order = Order.new(currency:'ASDF', gross:70, discount:90,  category: c)
    assert_not order.save, "Saved invalid currency"
  end

  test "Order should be saved without discount" do
    c = Category.first
    order = Order.new(currency:'USD', gross:70,  category: c)
    assert order.save, "Didn't save order without discount"
  end

  test "Order should be saved without category" do
    order = Order.new(currency:'USD', gross:70, discount:15)
    assert order.save, "Didn't save order without category"
  end
end
