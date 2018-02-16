require 'pry'
class Artist

  attr_accessor :name, :songs, :song, :all, :artist

    @@all = []

  def initialize(name)
    @name=name
    @song=song
    @artist=artist
    @songs = []
    @all = []

  end

  def add_song(song)
    @songs << song
  end

  def songs(song)
   @songs
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.create(name)
    name = Artist.new(name)
    name.save
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
    songs.each { |song| puts song.name}
  end
    #binding.pry

end #class
