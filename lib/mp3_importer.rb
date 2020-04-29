class MP3Importer 
  
  attr_accessor :path
  def initialize(filepath)
    @path = filepath
  end
  
  def files
    Dir[path]
  end
end