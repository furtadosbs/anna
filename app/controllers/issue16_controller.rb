class Issue16Controller < ApplicationController
  before_action :set_user, only: [ :new, :create ]

  def new
  end

  def create
    if @user.check_issue16(params.expect([ :answer ]))
      redirect_to issue16_path
    else
      flash.now[:alert] = "Resposta incorreta. Tente novamente."
      render :new
    end
  end

  private
    def set_user
      @user = Current.user
    end
end
