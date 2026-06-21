class QuestionsController < ApplicationController
  def index
    @stages = Stage.all
  end
end
