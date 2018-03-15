class Song
  attr_accessor :name, :artist, :genre
   @@count = 0
   @@genres = []
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
  @@genres unique
  end
  
  # def self.genre_count
  #   hash of key value pairs of genres and their count using @@genres
  # end
  
  def self.artists
  @@artists unique
  end
  
   def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end