class DriveIn
    attr_accessor :car, :movie_screen, :name

    @@all = []
#should return the name of the `DriveIn` name is a string
#initialize with a string 
    def initialize(car, movie_screen, name)
        @car = car 
        @movie_screen = movie_screen
        @name = name 
        @@all << self 
    end 

    def screens 
        MovieScreen.all.map do |movie_screens_drive|
            movie_screens_drive.movie_screen = self 
        end 
    end 

    def self.all 
        @@all 
    end 

    def whats_playing
        MovieScreen.all.select do |movie_playing|
            movie_playing.movie_title == self 
        end
    end 
    

    def full_house 
        if whats_playing == "Full House"
            return 
            true
        else 
            false
        end 
    end 




end
