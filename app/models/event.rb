class Event < ActiveRecord::Base
  attr_accessible :created_by, :start, :description, :end, :title, 
  :space_id, :engineer_id, :band_id, :band_name
  
  attr_accessor :band_name
  
  # validates :end, :numericality => { :greater_than_or_equal_to => 1 }
  belongs_to :space
  belongs_to :band
  
  # Public: Return a Band's ID or create a new one
  #
  # text  - The String to be duplicated.
  # count - The Integer number of times to duplicate the text.
  #
  # Examples
  #
  #   band_name_to_id 
  #   # => 5
  #
  # Returns the duplicated String.
  def band_name_to_id
    band = Band.find_or_create_by_name(self.band_name)
    self.band_id = band.id  
  end
  
  # Public: Queries the DB for all events
  #
  # Sets the global variable @events to hold every event with a url, title
  # url will reference "edit event" if current user is admin else "show event"
  def list_events(current_user)
    events = Event.joins(:band).select(['events.id AS url', "bands.name AS title", "events.space_id AS color ", :start])
    events.each do |event|
      if current_user
        event.url = "events/" << event.url << "/edit"
      else
        event.url = "events/" << event.url
      end

      if event.color.to_i == 1
        event.color = "#324F6D"
      elsif event.color.to_i == 2
        event.color = "#C27F54"
      else
      event.color = "#333333"
      end

    end
  end
end

