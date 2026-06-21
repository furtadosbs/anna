require "test_helper"

class Issue4ControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get new" do
    sign_in_as(@user)
    get issue4_new_url
    assert_response :success
  end

  test "should redirect to board on correct answer" do
    sign_in_as(@user)
    post issue4_url, params: { answer: User::ISSUE4_ANSWER }
    assert_redirected_to issue4_path
  end
end
