class Event < ActiveRecord::Base
  attr_accessible :created_by, :dateTime, :description, :duration, :name
  
  validates :duration, :numericality => { :greater_than_or_equal_to => 1 }
end
