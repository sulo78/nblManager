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

ActiveRecord::Schema.define(:version => 20130310162857) do

  create_table "lendings", :force => true do |t|
    t.string   "lender_name"
    t.string   "lender_surname"
    t.string   "lender_phone"
    t.string   "department"
    t.string   "room_nr"
    t.text     "accessories"
    t.text     "comment"
    t.integer  "notebook_id"
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.datetime "lending_start"
    t.datetime "lending_end"
  end

  create_table "locations", :force => true do |t|
    t.string   "loc_acronym"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "notebooks", :force => true do |t|
    t.string   "manufactor"
    t.string   "nb_type"
    t.string   "serial"
    t.string   "nb_name"
    t.string   "cpu"
    t.integer  "ram"
    t.text     "comment"
    t.boolean  "is_lent",     :default => false
    t.integer  "pool_id"
    t.integer  "location_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "pools", :force => true do |t|
    t.string   "pool_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.boolean  "is_admin",        :default => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

end
