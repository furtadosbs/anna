class UsersController < ApplicationController
  allow_unauthenticated_access only: [ :new, :create ]

  def show
    @user = Current.user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path, notice: "Usuário criado com sucesso."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.expect(user: [ :email_address, :name,  :password, :password_confirmation ])
  end
end
