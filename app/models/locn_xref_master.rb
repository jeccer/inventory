class LocnXrefMaster < ActiveRecord::Base
  
    def self.load(file)
      records = []
      CSV.foreach(file.path, :headers => true) do |row|
        records << LocnXrefMaster.new(row.to_hash)
      end
      LocnXrefMaster.import records, :validate => false
   end
   
end
