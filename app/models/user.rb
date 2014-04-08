class User < ActiveRecord::Base
  
  extend FriendlyId
  friendly_id :username
  
  has_secure_password
  
  attr_accessible :password, :password_confirmation, :username
  
  validates :username, :uniqueness => true, :format => { :with => /^[a-zA-Z0-9_]+$/ }
  
end
