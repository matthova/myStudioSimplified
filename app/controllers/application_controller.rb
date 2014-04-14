class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end
  # helper_method :current_user

  def authenticate
    if !current_user
      redirect_to :root
    end
  end
end
