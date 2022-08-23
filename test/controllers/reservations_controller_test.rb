require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get reservations_create_url
    assert_response :success
  end

  test "should get decline" do
    get reservations_decline_url
    assert_response :success
  end

  test "should get accept" do
    get reservations_accept_url
    assert_response :success
  end

  test "should get user_index" do
    get reservations_user_index_url
    assert_response :success
  end
end
