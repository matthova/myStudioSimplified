# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140410185838) do

  create_table "bands", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "start"
    t.integer  "end"
    t.string   "description"
    t.integer  "created_by"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "space_id"
    t.integer  "engineer_id"
    t.integer  "band_id"
  end

  create_table "gears", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "payments", :force => true do |t|
    t.integer  "amount"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "balance"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "spaces", :force => true do |t|
    t.string   "name"
    t.integer  "size"
    t.string   "description"
    t.integer  "hourly_rate"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "studios", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "email"
    t.string   "fname"
    t.string   "lname"
    t.string   "phone"
    t.string   "description"
    t.boolean  "studio_admin"
    t.boolean  "studio_owner"
    t.integer  "hourly_rate"
    t.boolean  "engineer"
  end

end
