require "test_helper"

class Issue7ControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get new" do
    sign_in_as(@user)
    get issue7_new_url
    assert_response :success
  end

  test "should redirect to board on correct answer" do
    sign_in_as(@user)
    post issue7_url, params: { answer: User::ISSUE7_ANSWER }
    assert_redirected_to board_path
    follow_redirect!
    assert_select ".notice", "Resposta correta!"
  end
end
