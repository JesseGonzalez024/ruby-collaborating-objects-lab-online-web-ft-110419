require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize (name)
    @name = name
    @@all << self
  end
  def self.all 
    @@all
  end
  def self.new_by_filename(file)
    array = file.split(" - ")
    song = Song.new(array[1])
    #artist = array[0]
    song.artist = array[0]
    
  end
  
 
 
 
 
end