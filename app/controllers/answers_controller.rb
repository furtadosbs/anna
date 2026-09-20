class AnswersController < ApplicationController
  before_action :set_question, only: [ :new, :create ]

  def new
    if Current.user.has_answered?(@question)
      redirect_to questions_path, alert: "Você já respondeu essa questão."
      return
    end

    @answer = Answer.new
  end

  def create
    @answer = @question.answers.build(answer_params)
    @answer.user = Current.user

    if @answer.save
      redirect_to questions_path, notice: "Parabéns você acertou!"
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
