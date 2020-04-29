class MP3Importer 
  
  attr_accessor :path
  def initialize(filepath)
    @path = filepath
  end
  
  def files
    Dir.glob("#{path}/*.mp3").collect do |file|
      file.gsub("#{path}/", "")
    end
  end
end