class DriveIn
    def initialize(name)
        @name=name 
    end 
    def name
        @name 
    end
    def screens
        MovieScreen.all.select do |movie_screen|
            movie_screen.drive_in==self
        end
    end
    def whats_playing
        MovieScreen.all.select do |movie_screen|
            movie_screen.movie_title==self
        end 
    end
    def full_house?
        MovieScreen.all.each do |movie_screen|
            if movie_screen.capacity==self 
                true
            end
        end
    end 

end
