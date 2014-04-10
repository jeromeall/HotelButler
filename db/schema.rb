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

ActiveRecord::Schema.define(version: 20140410005241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "concierges", force: true do |t|
    t.integer  "stay_id"
    t.integer  "num_party"
    t.datetime "event_date"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "event_type"
  end

  add_index "concierges", ["stay_id"], name: "index_concierges_on_stay_id", using: :btree

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
    t.string   "logo_img"
  end

  create_table "housekeepings", force: true do |t|
    t.integer  "stay_id"
    t.text     "request"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "housekeepings", ["stay_id"], name: "index_housekeepings_on_stay_id", using: :btree

  create_table "menu_items", force: true do |t|
    t.integer  "hotel_id"
    t.string   "name"
    t.text     "description"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menu_items", ["hotel_id"], name: "index_menu_items_on_hotel_id", using: :btree

  create_table "order_details", force: true do |t|
    t.integer  "roomservice_id"
    t.integer  "menu_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity"
    t.text     "instructions"
  end

  add_index "order_details", ["menu_item_id"], name: "index_order_details_on_menu_item_id", using: :btree
  add_index "order_details", ["roomservice_id"], name: "index_order_details_on_roomservice_id", using: :btree

  create_table "rooms", force: true do |t|
    t.integer  "hotel_id"
    t.integer  "room_num"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "vacant_stat"
  end

  add_index "rooms", ["hotel_id"], name: "index_rooms_on_hotel_id", using: :btree

  create_table "roomservices", force: true do |t|
    t.integer  "stay_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roomservices", ["stay_id"], name: "index_roomservices_on_stay_id", using: :btree

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
