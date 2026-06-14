class Issue1Controller < ApplicationController
  def new
  end

  def create
    if Current.user.check_issue1(params.expect([ :answer ]))
      redirect_to board_path, notice: "Resposta correta!"
    else
      flash.now[:alert] = "Resposta incorreta. Tente novamente."
      render :new
    end
  end
end
