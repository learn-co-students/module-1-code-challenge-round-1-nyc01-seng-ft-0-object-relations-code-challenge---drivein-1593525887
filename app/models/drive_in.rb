class DriveIn

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def screens
        MovieScreen.all.select do |element|
            element.drive_in == self
        end
    end

    #this is a helper method used b following methods
    def movie_screens
        MovieScreen.all.select do |element|
            element.drive_in == self
        end
    end

    def whats_playing
        movie_screens.map do |element|
            element.movie_title
        end
    end

    def full_house?
        movie_screens.all? do |element|
            element.at_capacity?
        end
    end
end
