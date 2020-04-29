class MP3Importer 
  
  attr_accessor :path
  def initialize(filepath)
    @path = filepath
  end
  
  def files
    file = Dir["@path/*.mp3"]
    file
  end
end