require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "create a new user" do
    assert_difference("User.count", 1) do
      post users_path, params: { user: { email_address: "example@example.com", password: "password", password_confirmation: "password" } }
    end

    assert_redirected_to new_session_path
  end
end
