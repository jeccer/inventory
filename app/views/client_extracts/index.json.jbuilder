json.array!(@client_extracts) do |client_extract|
  json.extract! client_extract, :id, :curr_locn_id, :locn_type, :company, :item_brcd, :item_name, :item_desc, :style, :color, :size, :std_cs_qty, :min_cs, :max_cs, :min_units, :max_units, :total_inventory, :sku_attribute_1
  json.url client_extract_url(client_extract, format: :json)
end
