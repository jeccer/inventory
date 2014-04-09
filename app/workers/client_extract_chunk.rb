class ClientExtractChunk
  @queue = :chunk_queue
  def self.perform(array)
    # print array
    # ClientExtract.create( array )
    # columns = [ :CURR_LOCN_ID, :LOCN_TYPE, :COMPANY, :ITEM_BRCD, 
      # :ITEM_NAME, :ITEM_DESC, :STYLE, :COLOR, :SIZE, :STD_CS_QTY, 
      # :MIN_CS, :MAX_CS, :MIN_UNITS, :MAX_UNITS, :TOTAL_INVENTORY, 
      # :SKU_ATTRIBUTE_1 ]
    
    ClientExtract.import array   
    

  end
end