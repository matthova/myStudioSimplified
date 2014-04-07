class Space < ActiveRecord::Base
  attr_accessible :description, :hourly_rate, :name, :size
end
