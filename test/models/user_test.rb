require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "downcases and strips email_address" do
    user = User.new(email_address: " DOWNCASED@EXAMPLE.COM ")
    assert_equal("downcased@example.com", user.email_address)
  end

  test "check issue1 with correct answer" do
    user = User.new
    assert user.check_issue1("crescimento")
  end

  test "check issue1 with incorrect answer" do
    user = User.new
    assert_not user.check_issue1("wrong answer")
  end
end
