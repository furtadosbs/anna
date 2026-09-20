require "test_helper"

class AnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    sign_in_as(@user)
    get questions_url
    assert_response :success
  end

  test "should redirect to new answer path with correct answer" do
    sign_in_as(@user)
    question = questions(:one)

    assert_difference("Answer.count", 1) do
      post question_answers_path(question), params: { answer: { value: question.correct_value } }
    end

    assert_redirected_to new_question_answer_path(question)

    follow_redirect!
    assert_select "#correct-message", "Parabéns você acertou!"
  end

  test "should render new with incorrect answer" do
    sign_in_as(@user)
    question = questions(:one)

    assert_no_difference("Answer.count") do
      post question_answers_path(question), params: { answer: { value: "wrong answer" } }
    end

    assert_response :unprocessable_entity
    assert_select "#alert", "Resposta incorreta. Tente novamente"
  end
end
