class EventsController < ApplicationController
  def index
    
    @events = Event.joins(:band).select(['events.id AS url', "bands.name AS title", :start])
    @events.each do |event|
      event.url = "events/" << event.url << "/edit"
    end
  end

  def show
    @event = Event.find(params[:id])
    @engineer = User.find(@event.engineer_id)
    @band = Band.find(@event.band_id)
    @space = Space.find(@event.space_id)
  end

  def new
    @event = Event.new
    @spaces = Space.all
    @engineers = User.where(engineer: true)
  end

  def edit
    @event = Event.find(params[:id])
    @engineers = User.where(engineer: true)
    @band = Band.find(@event.band_id)
    @spaces = Space.all
    if !current_user
      redirect_to("/events/#{@event.id}")
    end
  end

  def create
    
    @event = Event.new(params[:event])
    @event.band_name_to_id
    
    respond_to do |format|
      if @event.save      
        @event = Event.where(:id => @event.id).joins(:band).select(['events.id AS url', "bands.name AS title", :start]).first
        @event.url = "events/" << @event.url
        format.html { redirect_to :root }
        format.js # create.js.erb
      else
        format.html { render "new" }
        format.js
      end
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
