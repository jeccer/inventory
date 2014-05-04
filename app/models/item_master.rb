class ItemMaster < ActiveRecord::Base
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |item_master|
        csv << client_extracts.attributes.values_at(*column_names)
      end
    end
  end
   
  def self.load(file)

    records = []
    CSV.foreach(file.path, :headers => true) do |row|
      records << ItemMaster.new(row.to_hash)
    end
    ItemMaster.import records, :validate => false
   end
end
