#has many movie_screens
#has many cars through movie
class DriveIn
    attr_reader :name
    @@all = []
    def initialize(drive_in_name)
        @name = drive_in_name
        @@all << self
    end

    def screens
        MovieScreen.all.select do |movie_object|
            movie_object.drive_in == self
        end
    end

    def whats_playing
        screens.collect do |movie_object|
            movie_object.movie_title
        end
    end

    def full_house?
        screens.all? do |movie_object|
            movie_object.at_capacity?
        end
    end

    def self.all
        @@all
    end
end
