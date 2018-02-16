class MP3Importer

  attr_accessor :path, :filenames

  def initialize(path)
    @path=path
    @filesnames = []
    MP3Importer.new('./db/mp3s').import
    #Dir["./spec/fixtures/mp3s"]
  end

  #MP3Importer.new('./db/mp3s').import
  # "/home/eyosef/ruby-collaborating-objects-lab-v-000" (directory file this is currently in)
  def files
    current_dir = Dir.getwd #name of current directory
    Dir.chdir(@path) #change directory to instance of path
    filenames = Dir.glob("*.mp3") #setting variable equal to mp3s in @path
    Dir.chdir(current_dir) #
    filenames
  end

  def import
    filename.each { |filename| Song.new_by_filename(filename)}
  end


end
