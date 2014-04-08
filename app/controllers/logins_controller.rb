class LoginsController < ApplicationController

  def new
  end
  
  def create
    user = User.find_by_username(params[:username])
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:username] = user.username
      redirect_to :root
    else
      redirect_to("/logins/new?invalid_password=true&email=#{params[:username]}")
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to(:root)
  end
end