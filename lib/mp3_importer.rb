class MP3Importer 
  
  attr_accessor :path
  def initialize(filepath)
    @path = filepath
  end
  
  def files
    @path.entries(@path)
  end
end