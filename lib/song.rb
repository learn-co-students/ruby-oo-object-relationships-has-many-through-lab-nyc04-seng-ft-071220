
class Song

    attr_accessor :name, :artist, :genre 
    
    @@all = []

    def initialize(name_param, artist_param, genre_param)
        @name = name_param
        @artist = artist_param
        @genre = genre_param
        @@all << self
    end

    def self.all 
        @@all 
    end

end