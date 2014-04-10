class EventsController < ApplicationController
  def index
    
    @events = Event.joins(:band).select(['events.id AS url', "bands.name AS title", :start])
    @events.each do |event|
      event.url = "events/" << event.url
    end
  end

  def show
    @event = Event.find(params[:id])
    binding.pry
  end

  def new
    @event = Event.new
    @spaces = Space.all
    @engineers = User.where(engineer: true)
  end

  def edit
    @event = Event.find(params[:id])
    @spaces = Space.all
    @engineers = User.where(engineer: true)
  end

  def create
    
    @event = Event.new(params[:event])
    @event.band_name_to_id
    
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
