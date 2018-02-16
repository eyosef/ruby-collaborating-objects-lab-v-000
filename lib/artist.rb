require 'pry'
class Artist

  attr_accessor :name, :songs, :song, :all, :artist

    @@all = []

  def initialize(name)
    @name=name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
   @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create(name)
    name = self.new(name)
    artist.name = name
    name
  end

  def self.find_or_create_by_name(name)
      if artist = self.all.detect { |artist| artist.name == name }
        return artist
      else
        self.create(name)
      end
  end #method

  def print_songs
    @songs.each { |song| puts song.name}
  end
    #binding.pry

end #class
