#artits --< Song >-- genre
class Song

    attr_accessor :artist, :genre, :song
    
    @@all = []
    def initialize(song, artist, genre)
        @song = song
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end
end