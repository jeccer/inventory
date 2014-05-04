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

ActiveRecord::Schema.define(version: 20140501012544) do

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

  create_table "item_masters", force: true do |t|
    t.string   "item_id"
    t.string   "company_id"
    t.string   "item_name"
    t.string   "business_partner_id"
    t.string   "description"
    t.string   "protection_level_id"
    t.string   "commodity_class_id"
    t.string   "commodity_code_id"
    t.string   "product_class_id"
    t.string   "un_number_id"
    t.string   "is_generic_item"
    t.string   "base_storage_uom_id"
    t.string   "item_season"
    t.string   "item_season_year"
    t.string   "item_style"
    t.string   "item_style_sfx"
    t.string   "item_color"
    t.string   "item_color_sfx"
    t.string   "item_second_dim"
    t.string   "item_quality"
    t.string   "item_size_desc"
    t.string   "item_bar_code"
    t.string   "item_desc_short"
    t.string   "item_upc_gtin"
    t.string   "unit_weight"
    t.string   "weight_uom_id"
    t.string   "unit_volume"
    t.string   "volume_uom_id"
    t.string   "unit_height"
    t.string   "unit_width"
    t.string   "unit_length"
    t.string   "dimension_uom_id"
    t.string   "variable_weight"
    t.string   "database_qty_uom_id"
    t.string   "display_qty_uom_id"
    t.string   "status_code"
    t.string   "item_image_filename"
    t.string   "audit_created_source"
    t.string   "audit_created_source_type"
    t.string   "audit_created_dttm"
    t.string   "audit_last_updated_source"
    t.string   "audit_last_updated_source_type"
    t.string   "audit_last_updated_dttm"
    t.string   "mark_for_deletion"
    t.string   "catch_weight_item"
    t.string   "commodity_level_desc"
    t.string   "channel_type_id"
    t.string   "color_desc"
    t.string   "size_uom"
    t.string   "hazmat_code"
    t.string   "commodity_code"
    t.string   "version"
    t.string   "item_quality_code"
    t.string   "prod_type"
    t.string   "std_bundl_qty"
    t.string   "stab_code"
    t.string   "item_orientation"
    t.string   "protn_factor"
    t.string   "cavity_len"
    t.string   "cavity_wd"
    t.string   "cavity_ht"
    t.string   "incremental_len"
    t.string   "incremental_wd"
    t.string   "incremental_ht"
    t.string   "stackable_item"
    t.string   "max_nest_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locn_xref_masters", force: true do |t|
    t.string   "boss_locn"
    t.string   "ma_area"
    t.string   "ma_zone"
    t.string   "ma_aisle"
    t.string   "ma_bay"
    t.string   "ma_level"
    t.string   "ma_position"
    t.string   "dsp_locn"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
