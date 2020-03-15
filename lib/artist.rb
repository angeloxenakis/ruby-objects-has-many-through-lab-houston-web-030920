class Artist
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def songs()
        artist_songs = []
        Song.all.each do |song|
            if song.artist == self 
                artist_songs.push(song)
            end
        end
        artist_songs
    end 

    def new_song(name, genre)
        Song.new(name, self, genre)
    end 

    def genres()
        artist_genres = []
        Song.all.each do |song|
            if song.artist == self
                artist_genres.push(song.genre)
            end
        end
        artist_genres
    end

    def self.all()
        @@all
    end 

end