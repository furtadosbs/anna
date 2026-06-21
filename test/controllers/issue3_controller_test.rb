require "test_helper"

class Issue3ControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get new" do
    sign_in_as(@user)
    get issue3_new_url
    assert_response :success
  end

  test "should redirect to board on correct answer" do
    sign_in_as(@user)
    post issue3_url, params: { answer: User::ISSUE3_ANSWER }
    assert_redirected_to issue3_path
  end
end
