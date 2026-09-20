class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.find(params[:id])
    @answer = Answer.new
  end
end
