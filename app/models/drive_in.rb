class DriveIn
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def screens
        MovieScreen.all_screens #<-- array of all the movie screens at the drive in?
    end

    def whats_playing
        MovieScreen.movie_title #<-- array of all the movie titles?
    end

    def full_house? # <-- checking if the movie screen obj is at capacity?
        if MovieScreen.at_capacity == true
            return true
        else
            return 
            false
        end
    end

     
end
