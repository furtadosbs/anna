require "test_helper"

class Issue11ControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get new" do
    sign_in_as(@user)
    get issue11_new_url
    assert_response :success
  end

  test "should redirect to board on correct answer" do
    sign_in_as(@user)
    post issue11_url, params: { answer: User::ISSUE11_ANSWER }
    assert_redirected_to issue11_path
  end
end
