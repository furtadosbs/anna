require "test_helper"

class Issue1ControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get new" do
    sign_in_as(@user)
    get issue1_new_url
    assert_response :success
  end
end
