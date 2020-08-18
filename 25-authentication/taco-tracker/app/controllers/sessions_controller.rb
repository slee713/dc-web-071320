class SessionsController < ApplicationController
  def login
  end

  def process_login
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id 
      redirect_to tacos_path 
    else
      flash.now[:login_error] = "No user found with those credentials"
      render :login
    end
  end

  def logout
    session.clear
    redirect_to login_path
  end
end


