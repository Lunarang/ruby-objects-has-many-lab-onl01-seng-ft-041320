class Artist 
  attr_accessor :name
  
  def initialize (name)
    @name = name
  end
  
  def add_song (song)
    Song.new (song)
    
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
end
