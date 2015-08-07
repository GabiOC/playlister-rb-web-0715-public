# code genre here
require_relative '../config/environment'

class Genre
  attr_accessor :name, :songs, :artists

   @@genres = []

  def initialize
    @name = name
    @artists = []
    @songs = []
    @@genres << self
  end

  def self.all
    @@genres
  end

  def self.count
    @@genres.length
  end 

  def reset_all
    @@genres.clear
  end

  def songs
    @songs
  end

  def artists
    @artists = @artists.uniq
  end
end