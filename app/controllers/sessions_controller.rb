class SessionsController < ApplicationController

  # Login Form
  def new

  end

  # Completing Login
  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user
    else
      flash[:message] = "Invalid credentials"
      redirect_to login_path
    end
  end

  # Logout
  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
