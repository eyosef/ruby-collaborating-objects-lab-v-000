require 'pry'
class Song

  attr_accessor :name, :artist, :all

  def initialize(name)
    @name = name
    @artist=artist
    @all = []
  end

  def artist(artist_name)
    #Song.new(artist_name) = self
  end

  def self.new_by_filename(file_name)
  end


end
