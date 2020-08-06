require 'pry'


class Genre

    @@all=[]

    attr_accessor :name


    def initialize(name_arg)
        @name=name_arg
        @@all << self
    end



    def self.all
        @@all
    end


    def songs
        Song.all.select do |song|
            song.genre==self
        end
    end

    def artists
        songs.map do |artist|
            artist.artist
        end
    end
    


end