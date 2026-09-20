require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "downcases and strips email_address" do
    user = User.new(email_address: " DOWNCASED@EXAMPLE.COM ")
    assert_equal("downcased@example.com", user.email_address)
  end

  test "should returns total points" do
    user = users(:one)
    assert_equal(2, user.points)
  end

  test "should returns if user has answered a question" do
    user = users(:one)
    question = questions(:one)
    assert(user.has_answered?(question))
  end

  test "should returns if user has not answered a question" do
    user = users(:one)
    question = questions(:four)
    assert_not(user.has_answered?(question))
  end
end
