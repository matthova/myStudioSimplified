class EventsController < ApplicationController
  def index
    @events = Event.select([:title, :start])
    # Alias SQL selected columns with any name using the 'AS' modifier.
    # @events_for_calendar = []
    # @events.each do |event|
    #   @events_for_calendar << [["title" => event.title],["start" => event.start]]
    # end
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
