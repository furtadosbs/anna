require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    sign_in_as(users(:one))
    get user_path
    assert_response :success
  end

  test "should render new" do
    get new_user_path
    assert_response :success
  end

  test "should redirect to login form with valid user" do
    assert_difference("User.count", 1) do
      post user_path, params: { user: { email_address: "example@example.com", name: "Example", password: "password", password_confirmation: "password" } }
    end

    assert_redirected_to new_session_path
    follow_redirect!
    assert_select "#notice", "Usuário criado com sucesso."
  end

  test "should render new with invalid user" do
    assert_no_difference("User.count") do
      post user_path, params: { user: { email_address: "", name: "", password: "password", password_confirmation: "password" } }
    end

    assert_response :unprocessable_entity
  end
end
