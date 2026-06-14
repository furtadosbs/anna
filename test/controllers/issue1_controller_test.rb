require "test_helper"

class Issue1ControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get issue1_new_url
    assert_response :success
  end
end
