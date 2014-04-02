class ClientExtract < ActiveRecord::Base
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |client_extract|
        csv << client_extracts.attributes.values_at(*column_names)
      end
    end
  end
   
  def self.import(file)           
    SmarterCSV.process( file.path, { :chunk_size => 2 }) do |array|
      Resque.enqueue( ClientExtractChunk, array )
    end
  end
end
