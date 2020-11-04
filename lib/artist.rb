require 'pry'

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name=nil)
        @name = name
        @@all << self
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song_by_name(name=nil, genre=nil)
        song = Song.new(name, genre)
        song.artist = self
    end

    def self.all
        @@all
    end

    def self.song_count
        song_count = 0
        Artist.all.each do |artist|
            song_count += artist.songs.count
        end
        song_count
    end

end