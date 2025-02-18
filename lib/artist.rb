require 'pry'
class Artist 
  attr_accessor :name, :songs
  
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def songs
    Song.all.select {|x| x.artist == self}
  end
  def add_song(song)
    song.artist = self
  end
  def self.find_or_create_by_name(artist)
    self.find(artist) ? self.find(artist) : Artist.new(artist)
  end   
  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end
  def print_songs
    songs.each {|song| puts song.name }
  end
end
  
  
