require "test_helper"

class BoardControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get show" do
    sign_in_as(@user)
    get board_url
    assert_response :success
  end
end
