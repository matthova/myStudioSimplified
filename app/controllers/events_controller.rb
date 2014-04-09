class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(params[:event])
    
    if @event.save      
      redirect_to(:root)
    else
      render "new"
    end
  end

  def update
    @event = Event.find(params[:id])
    @event.update_attributes(params[:event])
    
    redirect_to(:root)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.delete
    
    redirect_to(:root)
  end
end
