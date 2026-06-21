require "test_helper"

class AnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "post correct answers" do
    sign_in_as(@user)
    question = questions(:one)

    assert_difference("Answer.count", 1) do
      post question_answers_path(question), params: { answer: { value: question.correct_value } }
    end

    assert_redirected_to new_question_answer_path(question)
  end
end
