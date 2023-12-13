require "test_helper"

class AmphisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get amphis_index_url
    assert_response :success
  end

  test "should get show" do
    get amphis_show_url
    assert_response :success
  end
end
