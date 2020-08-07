require 'pry'

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def new_song(title, genre)
        song = Song.new(title, self, genre)
    end

    def genres
        self.songs.map(&:genre)
    end

end
