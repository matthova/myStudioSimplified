class GearsController < ApplicationController
  before_filter :authenticate
  
  def index
    @gears = Gear.all
  end

  def show
    @gear = Gear.find(params[:id])
  end

  def new
    @gear = Gear.new
  end

  def edit
    @gear = Gear.find(params[:id])
  end

  def create
    @gear = Gear.new(params[:gear])
    
    if @gear.save
      
      redirect_to("/gears")
    else
      render "new"
    end
  end

  def update
    @gear = Gear.find(params[:id])
    @gear.update_attributes(params[:gear])
    
    redirect_to("/gears")
  end

  def destroy
    @gear = Gear.find(params[:id])
    redirect_to("/gears")
  end
end
