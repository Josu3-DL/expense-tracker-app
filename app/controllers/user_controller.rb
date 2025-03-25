class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path, notice: 'Cuenta creada exitosamente'
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:username,:password,:password_confirmation)
  end
end
