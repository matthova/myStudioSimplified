class Event < ActiveRecord::Base
  attr_accessible :created_by, :start, :description, :end, :title, 
  :space_id, :engineer_id, :band_id, :band_name
  
  attr_accessor :band_name
  
  def band_name_to_id
    band = Band.find_or_create_by_name(self.band_name)
    self.band_id = band.id
    
  end
  
  # validates :end, :numericality => { :greater_than_or_equal_to => 1 }
  belongs_to :space
  belongs_to :band
end
