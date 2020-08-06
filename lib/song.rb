require 'pry'

class Song

@@all=[]

attr_accessor :name, :artist, :genre

def initialize(name_arg, artist, genre)
    @name=name_arg
    @artist=artist
    @genre=genre
    @@all << self
end


def self.all
    @@all
end

end