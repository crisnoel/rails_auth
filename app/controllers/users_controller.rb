class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_filter :login_required, :only => [:index]
  
  def index
    @users = User.all  
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, :notice => "Usuario Registrado!"
    else
      render "new"
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
  
    def login_required
      if session[:user_id] == nil 
        flash[:error] = "Necesitas iniciar sesion"
        redirect_to new_session_path      
      end
    end
end
