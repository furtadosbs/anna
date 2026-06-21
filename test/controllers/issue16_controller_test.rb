require "test_helper"

class Issue16ControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get new" do
    sign_in_as(@user)
    get issue16_new_url
    assert_response :success
  end

  test "should redirect to board on correct answer" do
    sign_in_as(@user)
    post issue16_url, params: { answer: User::ISSUE16_ANSWER }
    assert_redirected_to issue16_path
  end
end
