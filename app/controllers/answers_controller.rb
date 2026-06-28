class AnswersController < ApplicationController
  before_action :set_question, only: [ :new, :create ]

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    value = params.expect(answer: [ :value ])[:value]
    if value == @question.correct_value
      @question.answer.create(user: Current.user, value: value)
      redirect_to new_question_answer_path(@question)
    else
      flash[:alert] = "Responsta incorreta. Tente novamente"
      redirect_to new_question_answer_path(@question)
    end
  end

  private

  def set_question
    @question = Question.find(params[:question_id])
  end
end
