# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

matt = User.create(
  email: "me@matthova.com",
  fname: "Matt",
  lname: "Hova",
  phone: "402-321-0863",
  description: "awesome",
  hourly_rate: 45,
  engineer: true,
  password: "password",
  password_confirmation: "password"
)

# matt.update_attribute(:admin, "true")
