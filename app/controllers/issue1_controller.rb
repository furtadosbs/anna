class Issue1Controller < ApplicationController
  before_action :set_user, only: [ :new, :create ]

  def new
  end

  def create
    if @user.check_issue1(params.expect([ :answer ]))
      redirect_to issue1_path
    else
      flash[:alert] = "Resposta incorreta. Tente novamente."
      render :new
    end
  end

  private
    def set_user
      @user = Current.user
    end
end
