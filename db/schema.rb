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

ActiveRecord::Schema.define(version: 20140321201634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guests", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "guests", ["email"], name: "index_guests_on_email", unique: true, using: :btree
  add_index "guests", ["reset_password_token"], name: "index_guests_on_reset_password_token", unique: true, using: :btree

  create_table "hotels", force: true do |t|
    t.string   "name"
    t.integer  "num_rooms"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.integer  "hotel_id"
    t.integer  "room_num"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "vacant_stat"
  end

  add_index "rooms", ["hotel_id"], name: "index_rooms_on_hotel_id", using: :btree

  create_table "stays", force: true do |t|
    t.integer  "room_id"
    t.integer  "guest_id"
    t.datetime "checkin_date"
    t.datetime "checkout_date"
    t.string   "res_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stays", ["guest_id"], name: "index_stays_on_guest_id", using: :btree
  add_index "stays", ["room_id"], name: "index_stays_on_room_id", using: :btree

end
