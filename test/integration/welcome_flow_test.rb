require "test_helper"

class WelcomeFlowTest < ActionDispatch::IntegrationTest
  test "can see the welcome page" do
    get "/"
    assert_select "h1", "Welcome to Order Management App"
  end
end
