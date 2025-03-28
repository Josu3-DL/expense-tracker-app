class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(username: params[:username]) 
    if user && user.authenticate(params[:password]) 
      session[:user_id] = user.id
      redirect_to dashboard_path, notice: "Inicio de sesión exitoso"
    else
      flash.now[:alert] = "Nombre de usuario o contraseña incorrectos"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy 
    session[:user_id] = nil
    redirect_to login_path
  end

end
