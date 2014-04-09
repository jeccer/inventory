class ClientExtract < ActiveRecord::Base
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |client_extract|
        csv << client_extracts.attributes.values_at(*column_names)
      end
    end
  end
   
  def self.load(file)

    records = []
    i = 0
    CSV.foreach(file.path, :headers => true) do |row|
      records << ClientExtract.new(row.to_hash)
      i = i + 1
      # if i == 10
        # ClientExtract.import records, :validate => false
        # records = []
        # i = 0
      # end
    end
    ClientExtract.import records, :validate => false
   end
    
end
