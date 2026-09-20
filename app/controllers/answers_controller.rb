class AnswersController < ApplicationController
  before_action :set_question, only: [ :create ]

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @answer = @question.answers.build(answer_params)
    @answer.user = Current.user

    if @answer.save
      redirect_to new_question_answer_path(@question), notice: "Parabéns você acertou!"
    else
      flash[:alert] = "Resposta incorreta. Tente novamente"
      render :new, status: :unprocessable_entity
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
