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
        MovieScreen.all.select{|movie_screen| movie_screen.drive_in == self}
    end
end
