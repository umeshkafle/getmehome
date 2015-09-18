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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150918083711) do

  create_table "requests", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "destination"
    t.string   "contact"
    t.integer  "age"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "vehicle_no"
    t.string   "license_no"
    t.text     "vechicle_description"
    t.string   "owner_name"
    t.text     "owner_address"
    t.string   "owner_contact"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "request_id"
  end

end
