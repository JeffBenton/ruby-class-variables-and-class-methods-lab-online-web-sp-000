class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    keys = self.genres
    hash = {}
    keys.each do |key|
      hash[key] = keys.count(key)
    end
    hash
  end
  
  def self.artist_count
    keys = self.artists
    hash = {}
    keys.each do |key|
      hash[key] = keys.count(key)
    end
    hash
  end
end
