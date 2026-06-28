require "test_helper"

class AnswerTest < ActiveSupport::TestCase
  test "invalid with incorrect answer" do
    answer = answers(:one)
    answer.value = "error"
    assert_not answer.valid?
  end
end
