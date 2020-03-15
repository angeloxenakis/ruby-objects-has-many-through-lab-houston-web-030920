class Genre
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name 
        @@all.push(self)
    end 

    def songs()
        genre_songs = []
        Song.all.each do |song|
            if song.genre == self
                genre_songs.push(song)
            end
        end
        genre_songs
    end 

    def artists()
        genre_artists = []
        Song.all.each do |song|
            if song.genre == self
                genre_artists.push(song.artist)
            end
        end 
        genre_artists
    end 

    def self.all()
        @@all
    end 

end 