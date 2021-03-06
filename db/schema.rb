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

  create_table "address1s", force: true do |t|
    t.text "street"
    t.text "postcode",  limit: 2
    t.text "city_name"
  end

  create_table "address2s", force: true do |t|
    t.integer "city2_id"
    t.text    "street"
  end

  create_table "address3s", force: true do |t|
    t.text "street"
  end

  create_table "address3s_city3s", force: true do |t|
    t.integer "address3_id"
    t.integer "city3_id"
  end

  create_table "address4s", force: true do |t|
    t.text "street"
  end

  create_table "address4s_city4s", force: true do |t|
    t.integer "address4_id"
    t.integer "city4_id"
  end

  create_table "city2s", force: true do |t|
    t.text "city_name"
    t.text "postcode",  limit: 2
  end

  create_table "city3s", force: true do |t|
    t.text "postcode",  limit: 2
    t.text "city_name"
  end

  create_table "city4s", force: true do |t|
    t.text "postcode",  limit: 2
    t.text "city_name"
  end

end
