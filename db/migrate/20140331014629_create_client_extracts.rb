class CreateClientExtracts < ActiveRecord::Migration
  def change
    create_table :client_extracts do |t|
      t.string :curr_locn_id
      t.string :locn_type
      t.string :company
      t.string :item_brcd
      t.string :item_name
      t.string :item_desc
      t.string :style
      t.string :color
      t.string :size
      t.string :std_cs_qty
      t.string :min_cs
      t.string :max_cs
      t.string :min_units
      t.string :max_units
      t.string :total_inventory
      t.string :sku_attribute_1

      t.timestamps
    end
  end
end
