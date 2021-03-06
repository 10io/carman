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

ActiveRecord::Schema.define(version: 20151123095357) do

  create_table "cars", force: :cascade do |t|
    t.integer  "type",                 default: 0
    t.string   "brand",                                null: false
    t.string   "model",                                null: false
    t.integer  "year",                                 null: false
    t.integer  "engine",               default: 0
    t.integer  "horsepower"
    t.decimal  "mpg"
    t.integer  "range"
    t.boolean  "suv",                  default: false
    t.integer  "head_lamp",            default: 0
    t.boolean  "blind_spot_detection", default: false
    t.integer  "traction",             default: 0
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

end
