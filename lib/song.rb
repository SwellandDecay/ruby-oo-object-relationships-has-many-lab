require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name=nil, genre=nil)
        @name = name
        @genre = genre
        @@all << self
    end

    def artist_name
        self.artist ? self.artist.name : nil
    end

    def self.all
        @@all
    end

end