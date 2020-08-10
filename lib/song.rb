class Song

    attr_reader :song, :artist, :genre
    @@all = []
    def initialize(song_name,artist_name,genre)
        @song = song_name
        @artist = artist_name
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

end