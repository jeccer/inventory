json.array!(@item_masters) do |item_master|
  json.extract! item_master, :id, :item_id, :company_id, :item_name, :business_partner_id, :description, :protection_level_id, :commodity_class_id, :commodity_code_id, :product_class_id, :un_number_id, :is_generic_item, :base_storage_uom_id, :item_season, :item_season_year, :item_style, :item_style_sfx, :item_color, :item_color_sfx, :item_second_dim, :item_quality, :item_size_desc, :item_bar_code, :item_desc_short, :item_upc_gtin, :unit_weight, :weight_uom_id, :unit_volume, :volume_uom_id, :unit_height, :unit_width, :unit_length, :dimension_uom_id, :variable_weight, :database_qty_uom_id, :display_qty_uom_id, :status_code, :item_image_filename, :audit_created_source, :audit_created_source_type, :audit_created_dttm, :audit_last_updated_source, :audit_last_updated_source_type, :audit_last_updated_dttm, :mark_for_deletion, :catch_weight_item, :commodity_level_desc, :channel_type_id, :color_desc, :size_uom, :hazmat_code, :commodity_code, :version, :item_quality_code, :prod_type, :std_bundl_qty, :stab_code, :item_orientation, :protn_factor, :cavity_len, :cavity_wd, :cavity_ht, :incremental_len, :incremental_wd, :incremental_ht, :stackable_item, :max_nest_number
  json.url item_master_url(item_master, format: :json)
end