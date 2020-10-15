class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    splitname = filename.split(" - ")
    song = self.new(splitname[1])
    artist = Artist.find_or_create_by_name(splitname[0])
    song.artist = artist
  end

  def artist_name=

  end

end
