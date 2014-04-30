class CreateLocnXrefMasters < ActiveRecord::Migration
  def change
    create_table :locn_xref_masters do |t|
      t.string :boss_locn
      t.string :ma_area
      t.string :ma_zone
      t.string :ma_aisle
      t.string :ma_bay
      t.string :ma_level
      t.string :ma_position
      t.string :dsp_locn

      t.timestamps
    end
  end
end
