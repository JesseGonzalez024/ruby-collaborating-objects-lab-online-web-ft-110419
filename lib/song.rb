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
    binding.pry
    song = Song.new(array[1])
    
  end
  
 
 
 
 
end