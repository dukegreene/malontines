module SessionsHelper

  def logged_in?
    !!current_user
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def authorize!
    flash[:auth_redirect_msg] = "Sorry, you have to be logged in to do that!"
    redirect_to login_path unless logged_in?
  end

end
