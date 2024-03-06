require "test_helper"

class Admin::BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_bookings_index_url
    assert_response :success
  end
end
