class Artist 
  attr_accessor :name
  
  def initialize (name)
    @name = name
  end

  def add_song (song)
    song.artist = self
  end
  
  def add_song_by_name (title)
    Song.new(title).artist = self
 
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
end
