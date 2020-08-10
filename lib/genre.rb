class Genre
    attr_reader :name

    @@all = []
    def initialize(song_genre)
        @name = song_genre
        @@all << self
    end

    def songs
        Song.all.select{|song_info|song_info.genre == self}
    end

    def self.all
        @@all
    end

    def artists
        songs.map{|artist_info| artist_info.artist}
    end
end