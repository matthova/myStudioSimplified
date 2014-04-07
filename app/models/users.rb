class Users < ActiveRecord::Base
  attr_accessible :description, :email, :fname, :hourly_rate, :lname, :password_digest, :phone, :studio_admin, :studio_owner, :username
end
