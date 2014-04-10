class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    
    if @user.save
      session[:user_id] = @user.id # "auto-login"
      
      redirect_to(:root)
    else
      render "new"
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    
    redirect_to(:root)
  end

  def destroy
    @user = User.find(params[:id])
    if current_user.id = @user.id
      session[:user_id] = nil
    end
    @user.delete
    
    redirect_to(:users)
  end
end
