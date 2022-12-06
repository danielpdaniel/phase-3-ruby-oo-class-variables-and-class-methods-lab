require 'pry'

class Song
    @@count = 0
    @@artists = []
    @@genres = []
    attr_accessor :name, :artist, :genre

    def initialize song, artist, genre
        @@count += 1
        @name = song
        @artist = artist
        @genre = genre
        @@artists.push artist
        @@genres.push genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        artists_count = {}
        @@artists.each do |artist| 
           if artists_count.include?("#{artist}")
            artists_count["#{artist}"] += 1
           else
            artists_count["#{artist}"] = 1
           end
        end
        artists_count
    end
end
