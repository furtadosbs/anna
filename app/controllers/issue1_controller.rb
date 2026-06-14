class Issue1Controller < ApplicationController
  def new
  end

  def create
    if params[:answer] == "1"
      Current.user.update(issue1: true)
      redirect_to board_path, notice: "Resposta correta!"
    else
      flash.now[:alert] = "Resposta incorreta. Tente novamente."
      render :new
    end
  end
end
