require "pry"

class DriveIn

    attr_reader :name
    @@all = []

    def initialize (name)
        @name = name

        @@all << self
    end


    def self.all
        @@all
    end

    def screens
        MovieScreen.all.select {|ms| ms.drive_in == self}
    end

    def whats_playing
        self.screens.map {|ms| ms.movie_title}
    end

    def full_house?
        capacities = self.screens.map {|ms| ms.at_capacity?}
        #binding.pry
        if capacities.uniq[0] == true && capacities.uniq.count == 1
            true
        else
            false
        end  
    end

    def tashawns_choice (capacity)
        MovieScreen.new("Avatar: The Last Airbender Marathon", capacity, self)
    end

    def caryns_choice (capacity)
        MovieScreen.new("My Hero Academia Marathon", capacity, self)
    end

end
