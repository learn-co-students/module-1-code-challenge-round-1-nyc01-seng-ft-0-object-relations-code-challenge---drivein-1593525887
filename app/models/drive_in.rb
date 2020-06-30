class DriveIn
    attr_reader :movie_screen, :name
    attr_accessor :car
    def initialize(name, car, movie_screen)
        @name = name
        @car = car
        @movie_screen = movie_screen
    end

    def screens
        Moviescreen.all.select {|movie| movie.movie_screen == self}
    end

    def whats_playing
        screens.map {|movie_title| movie_title.name}
    end

    def full_house?
        self.movie_screen.all = Moviescreen.capacity
    end
end
