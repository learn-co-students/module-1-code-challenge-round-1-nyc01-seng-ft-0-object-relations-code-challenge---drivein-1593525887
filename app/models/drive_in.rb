class DriveIn
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def screens
        MovieScreen.all_screens.select {|ms| ms.drive_in == self}
    end

    def whats_playing
        screens.map {|screen| screen.movie_title}
    end

    #ran out of time to check but basically want to go through all screens and return true if all .at_capacity (so need to iterate throuhg) results in true
    def full_house?
        if screens.all? {|screen| screen.at_capacity}
    end

end
