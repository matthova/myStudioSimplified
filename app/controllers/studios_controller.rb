class StudiosController < ApplicationController
  def index
    # @studios = Studio.all
    redirect_to("/studios/1")
  end

  def show
    @studio = Studio.find(params[:id])
  end

  def new
    # @studio = Studio.new
    redirect_to("/studios/1")
  end

  def edit
    @studio = Studio.find(params[:id])
  end

  def create
    @studio = Studio.new(params[:studio])
    
    if @studio.save      
      redirect_to(:studios)
    else
      render "new"
    end
  end

  def update
    @studio = Studio.find(params[:id])
    @studio.update_attributes(params[:studio])
    
    redirect_to(:studios)
  end

  def destroy
    @studio = Studio.find(params[:id])
    @studio.delete
    
    redirect_to(:studios)
  end
end
