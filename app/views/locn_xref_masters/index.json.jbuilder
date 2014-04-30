json.array!(@locn_xref_masters) do |locn_xref_master|
  json.extract! locn_xref_master, :id, :boss_locn, :ma_area, :ma_zone, :ma_aisle, :ma_bay, :ma_level, :ma_position, :dsp_locn
  json.url locn_xref_master_url(locn_xref_master, format: :json)
end
