require 'pry'
class Genre 
    
    attr_accessor :name, :song

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def name 
        @name
    end 

    def songs 
        Song.all
    end

    def self.all 
        @@all 
    end 

    def artists
        songs.map do |song|
            song.artist 
        end 
        # binding.pry
    end 
end 
