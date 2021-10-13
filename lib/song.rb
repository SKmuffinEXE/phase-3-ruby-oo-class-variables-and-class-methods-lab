require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
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

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] +=1
            else
                artist_count[artist] = 1
            end
        end

        artist_count
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |artist|
            if genre_count[artist]
                genre_count[artist] +=1
            else
                genre_count[artist] = 1
            end
        end

        genre_count
    end

end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")

ninety_nine_problems.name  #99 problems
ninety_nine_problems.artist #jay-z
ninety_nine_problems.genre #rap

binding.pry