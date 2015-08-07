# code song here
require_relative '../config/environment'

class Song
  attr_accessor :name, :genre, :artist

  def initialize
    @genre = genre
    @name = name
    @artist = artist
  end

  def genre=(genre)
    @genre.songs << self
  end
end