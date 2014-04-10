class Studio < ActiveRecord::Base
  attr_accessible :description, :name
  
  has_many :spaces
end
