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

ActiveRecord::Schema.define(version: 20140331014629) do

  create_table "client_extracts", force: true do |t|
    t.string   "curr_locn_id"
    t.string   "locn_type"
    t.string   "company"
    t.string   "item_brcd"
    t.string   "item_name"
    t.string   "item_desc"
    t.string   "style"
    t.string   "color"
    t.string   "size"
    t.string   "std_cs_qty"
    t.string   "min_cs"
    t.string   "max_cs"
    t.string   "min_units"
    t.string   "max_units"
    t.string   "total_inventory"
    t.string   "sku_attribute_1"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
