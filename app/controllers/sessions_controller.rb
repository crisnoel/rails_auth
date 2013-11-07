class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Inicio Sesion"
    else
      flash.now.alert = "Imposible iniciar sesion"
      render "new"
    end
  end
  
  def delete
    session[:user_id] = nil
    flash[:notice] = "Hasta Pronto"
    redirect_to root_url
  end
end
