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

ActiveRecord::Schema.define(version: 20150825042318) do

  create_table "blands", force: :cascade do |t|
    t.string   "name"
    t.integer  "high_appearance_gear_power_id"
    t.integer  "low_appearance_gear_power_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "gear_powers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gears", force: :cascade do |t|
    t.string   "name"
    t.integer  "part"
    t.integer  "gear_power_id"
    t.integer  "price"
    t.boolean  "salable"
    t.integer  "bland_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "gears", ["bland_id"], name: "index_gears_on_bland_id"
  add_index "gears", ["gear_power_id"], name: "index_gears_on_gear_power_id"

end
