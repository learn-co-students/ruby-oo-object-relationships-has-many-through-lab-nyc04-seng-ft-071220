class Song

    attr_accessor :name, :artist, :genre
    @@all = []

    def initialize(name_par, artist_par, genre_par)
        @name = name_par
        @artist = artist_par
        @genre = genre_par
        @@all << self
    end

    def self.all
        @@all
    end
    
end