require 'test_helper'

class OrderStatusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get order_status_index_url
    assert_response :success
  end

  test "should get inProgress" do
    get order_status_inProgress_url
    assert_response :success
  end

  test "should get placed" do
    get order_status_placed_url
    assert_response :success
  end

  test "should get shipped" do
    get order_status_shipped_url
    assert_response :success
  end

  test "should get completed" do
    get order_status_completed_url
    assert_response :success
  end

  test "should get cancelled" do
    get order_status_cancelled_url
    assert_response :success
  end

end
