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

  test "should redirect to board on correct answer" do
    sign_in_as(@user)
    post issue1_url, params: { answer: User::ISSUE1_ANSWER }
    assert_redirected_to issue1_path
  end
end
