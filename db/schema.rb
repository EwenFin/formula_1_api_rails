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

ActiveRecord::Schema.define(version: 20170509103332) do

  create_table "contracts", force: :cascade do |t|
    t.integer  "value"
    t.integer  "driver_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "contracts", ["driver_id"], name: "index_contracts_on_driver_id"
  add_index "contracts", ["team_id"], name: "index_contracts_on_team_id"

  create_table "deals", force: :cascade do |t|
    t.integer  "value"
    t.integer  "driver_id"
    t.integer  "sponsor_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "deals", ["driver_id"], name: "index_deals_on_driver_id"
  add_index "deals", ["sponsor_id"], name: "index_deals_on_sponsor_id"
  add_index "deals", ["team_id"], name: "index_deals_on_team_id"

  create_table "drivers", force: :cascade do |t|
    t.string   "name"
    t.integer  "rank"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.string   "market"
    t.string   "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
