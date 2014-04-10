class Space < ActiveRecord::Base
  attr_accessible :description, :hourly_rate, :name, :size

  belongs_to :studio
  has_many :events
end
