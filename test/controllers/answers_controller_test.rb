require "test_helper"

class AnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should render new when user no answer the question" do
    sign_in_as(@user)
    get new_question_answer_path(questions(:four))
    assert_response :success
  end

  test "should redirect to questions path when user already answered the question" do
    sign_in_as(@user)
    question = questions(:one)
    @user.answers.create(question: question, value: question.correct_value)

    get new_question_answer_path(question)
    assert_redirected_to questions_path
    follow_redirect!
    assert_select "#alert", "Você já respondeu essa questão."
  end

  test "should redirect to questions path with correct answer" do
    sign_in_as(@user)
    question = questions(:one)

    assert_difference("Answer.count", 1) do
      post question_answers_path(question), params: { answer: { value: question.correct_value } }
    end

    assert_redirected_to questions_path
    follow_redirect!
    assert_select "#notice", "Parabéns você acertou!"
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
