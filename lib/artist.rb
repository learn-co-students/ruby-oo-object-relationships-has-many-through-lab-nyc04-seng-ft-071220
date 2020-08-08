require 'pry'

class Artist
    
    attr_accessor :name

    @@all = []

    def initialize(name_param)
        @name = name_param
        @@all << self
    end

    def self.all 
        @@all 
    end

    def songs 
        # binding.pry
        Song.all.select { |song| song.artist == self } 
    end

    def new_song(name_param, genre_param)
        Song.new(name_param, self, genre_param)
    end

    def genres
        genre_array = self.songs.map { |song| song.genre }
        genre_array 
        # binding.pry
    end

end