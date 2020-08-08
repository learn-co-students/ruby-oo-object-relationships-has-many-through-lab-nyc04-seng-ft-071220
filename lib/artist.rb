require 'pry'
class Artist 

    attr_accessor :name, :song

    @@all = []

    def initialize(name_arg)
        @name = name_arg
        @@all << self
    end 


    def self.all
        @@all
    end 
    
    def songs 
        Song.all.select do |song|
            song.artist == self
        end 
        # binding.pry
    end 

    def new_song(name, genre)
        Song.new(name, self, genre)
    end 

    def genres
        Song.all.map do |song|
            song.genre
        end
    end 

end 
