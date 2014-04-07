class Event < ActiveRecord::Base
  attr_accessible :created_by, :dateTime, :description, :duration, :name
end
