# code artist here
require_relative '../config/environment'
require 'pry'

class Artist
  attr_accessor :name, :songs, :genres

  @@artists = []

  def initialize
    @name = name
    @songs = []
    @genres = []
    @@artists << self
  end

  def self.all
    @@artists
  end

  def self.count
    @@artists.count
  end

  def self.reset_artists
    @@artists.clear
  end

  def add_song(song)
    # binding.pry
    @songs << song
    @genres << song.genre
    song.genre.artist << self if song.genre
  end
end