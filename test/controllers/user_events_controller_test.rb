require "test_helper"

class UserEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_events_create_url
    assert_response :success
  end
end
