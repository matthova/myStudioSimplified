class Band < ActiveRecord::Base
  attr_accessible :description, :name
  
  has_many :events
end
