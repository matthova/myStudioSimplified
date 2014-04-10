class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
  end

  def new
    @space = Space.new
    @studios = Studio.All
  end

  def edit
    @space = Space.find(params[:id])
  end

  def create
    @space = Space.new(params[:space])
    
    if @space.save      
      redirect_to(:spaces)
    else
      render "new"
    end
  end

  def update
    @space = Space.find(params[:id])
    @space.update_attributes(params[:space])
    
    redirect_to(:spaces)
  end

  def destroy
    @space = Space.find(params[:id])
    @space.delete
    
    redirect_to(:spaces)
  end
end
