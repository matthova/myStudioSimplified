class Event < ActiveRecord::Base
  attr_accessible :created_by, :start, :description, :end, :title
  
  validates :end, :numericality => { :greater_than_or_equal_to => 1 }

end
