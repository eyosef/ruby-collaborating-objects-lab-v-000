class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path=path
    #Dir["./spec/fixtures/mp3s"]
  end

  #MP3Importer.new('./db/mp3s').import
  # "/home/eyosef/ruby-collaborating-objects-lab-v-000" (directory file this is currently in)
  def files
    current_dir = Dir.getwd
    Dir.chdir(@path)
    filenames = Dir.glob("*.mp3")
    Dir.chdir(current_dir)
    filenames
  end

  def import(filename)
    filename.each { |filename| Song.new_by_filename(filename)}

  end


end
