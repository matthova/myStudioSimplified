class User < ActiveRecord::Base
  
  has_secure_password
  
  attr_accessible :password, :password_confirmation, :email, :fname, :lname, :phone, :description, :hourly_rate, :engineer
  
  validates :email, :uniqueness => true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  
  def name
    fname + " " + lname
  end
end
