
class Genre

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
        Song.all.select { |song| song.genre == self } 
    end

    def artists 
        artist_array = self.songs.map { |song| song.artist }
        artist_array 
    end

end

