class LoginsController < ApplicationController

  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:email] = user.email
      redirect_to :root
    else
      redirect_to("/logins/new?invalid_password=true&email=#{params[:email]}")
    end
  end
  
  def destroy
    binding.pry
    session[:user_id] = nil
    redirect_to(:root)
    binding.pry
  end
end