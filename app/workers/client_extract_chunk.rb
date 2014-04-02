class ClientExtractChunk
  @queue = :chunk_queue
  def self.perform(array)
    ClientExtract.create( array.first )
  end
end