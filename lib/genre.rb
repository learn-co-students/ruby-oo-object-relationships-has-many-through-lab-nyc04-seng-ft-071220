class Genre

    attr_accessor :name
    @@all = []

    def initialize(name_par)
        @name = name_par
        @@all << self
    end

    def self.all
        @@all
    end

    #iterates through all songs and finds the songs that belong to that genre.
    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    #iterates over the genre's collection of songs  
    #collects the artist that owns each song.
    def artists
        songs.map(&:artist)
    end
end