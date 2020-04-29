class Artist 
  
  attr_accessor :name
  
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_name(name)
    self.all.find {
  end
  
  def self.find_or_create_by_name(name)
    artist_name = @@all.find {|artist| artist.name == name}
    artist_name
      
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  
  def print_songs
    all_songs = self.songs
    puts all_songs.map {|song| song.name}
  end
end