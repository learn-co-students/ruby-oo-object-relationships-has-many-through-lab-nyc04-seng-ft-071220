require "pry"
class Artist
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|song_info|song_info.artist == self}
    end

    def new_song(song_name,genre)
        Song.new(song_name,self,genre)
    end

    def genres
        self.songs.map{|artist_info| artist_info.genre}
    end
end