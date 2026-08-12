class AnswersController < ApplicationController
  before_action :set_question, only: [ :create ]

  def create
    @answer = @question.answers.build(answer_params)
    @answer.user = Current.user
    if @answer.save
      redirect_to @question
    else
      flash[:alert] = "Resposta incorreta. Tente novamente"
      redirect_to @question
    end
  end

  private

  def set_question
    @question = Question.find(params[:question_id])
  end

  def answer_params
    params.expect(answer: [ :value ])
  end
end
