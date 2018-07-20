require 'test_helper'

class PizzaCanadaControllerTest < ActionDispatch::IntegrationTest
  test "should get menu" do
    get pizza_canada_menu_url
    assert_response :success
  end

  test "should get home" do
    get pizza_canada_home_url
    assert_response :success
  end

  test "should get info" do
    get pizza_canada_info_url
    assert_response :success
  end

end
