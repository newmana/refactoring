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

ActiveRecord::Schema.define(version: 20140318120340) do

  create_table "address1", force: true do |t|
    t.text "street"
    t.text "city"
    t.text "postcode",   limit: 2
    t.text "state_name"
  end

  create_table "address2", force: true do |t|
    t.integer "state_id"
    t.text    "street"
    t.text    "city"
  end

  create_table "address3", force: true do |t|
    t.text "street"
    t.text "city"
  end

  create_table "address3_state3", id: false, force: true do |t|
    t.integer "address3_id", null: false
    t.integer "state3_id",   null: false
  end

  create_table "state2", force: true do |t|
    t.text "postcode",   limit: 2
    t.text "state_name"
  end

  create_table "state3", force: true do |t|
    t.text "postcode",   limit: 2
    t.text "state_name"
  end

end
