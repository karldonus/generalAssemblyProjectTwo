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

ActiveRecord::Schema.define(version: 20150803155132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inquiries", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "credit_score"
    t.integer  "num_pets"
    t.string   "explain_pets"
    t.string   "phone"
    t.integer  "num_tenants"
    t.string   "relation_tenants"
    t.string   "qualification"
    t.text     "inquiry_notes"
    t.text     "admin_notes"
    t.datetime "created_at"
    t.integer  "rental_id"
  end

  add_index "inquiries", ["rental_id"], name: "index_inquiries_on_rental_id", using: :btree

  create_table "rentals", force: :cascade do |t|
    t.string   "agent"
    t.string   "property_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "monthly_rent"
    t.integer  "bed_num"
    t.integer  "bath_num"
    t.string   "availability_date"
    t.datetime "created_at"
    t.string   "client_name"
    t.string   "client_phone"
    t.string   "client_email"
    t.text     "listing_notes"
    t.text     "admin_notes"
  end

  add_foreign_key "inquiries", "rentals"
end
