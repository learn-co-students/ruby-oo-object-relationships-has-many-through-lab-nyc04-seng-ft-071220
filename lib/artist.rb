require 'pry'

class Artist
    attr_accessor :name
    @@all = []

    def initialize(name_par)
        @name = name_par
        @@all << self
    end

    def self.all
        @@all
    end

    #given a name and genre, creates a new song associated with that artist
    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end

    #returns all songs associated with this Artist
    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    #iterates over that artist's songs and collects the genre of each song.
    def genres
        #songs.map(&:genre)
        songs.map do |song|
            song.genre
            # binding.pry
        end
    end
end

# binding.pry
# 0