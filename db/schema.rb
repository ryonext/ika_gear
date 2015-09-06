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

ActiveRecord::Schema.define(version: 20150906055813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.integer  "bland_id"
    t.integer  "gear_power_id"
    t.integer  "rarity"
    t.integer  "price"
    t.boolean  "salable"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "gears", ["bland_id"], name: "index_gears_on_bland_id", using: :btree
  add_index "gears", ["gear_power_id"], name: "index_gears_on_gear_power_id", using: :btree
  add_index "gears", ["name"], name: "index_gears_on_name", unique: true, using: :btree

  create_table "manmenmes", force: :cascade do |t|
    t.integer  "count",      default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
