class Song
    attr_reader :name, :artist, :genre

    @@artists = []
    @@genres = []
    @@count = 0
    @@artist_count = {}
    @@genre_count = {}
    @@class_count = 0


    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre

        @@genre_count[genre] = []
        @@genre_count[genre] = 0

        @@artist_count[artist] = []
        @@artist_count[artist] = 0
    
        
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
        @@genres.each{|genre| @@genre_count[genre] += 1}
        @@genre_count
    end

    def self.artist_count
        @@artists.each{|artist| @@artist_count[artist] +=1}
        @@artist_count
    end


end