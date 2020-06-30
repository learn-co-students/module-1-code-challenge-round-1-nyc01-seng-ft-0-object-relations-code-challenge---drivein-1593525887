class DriveIn #the Place

    attr_reader :name #DriveIn#name here
    @@all =[]

    def initialize(name)
        @name = name
        DriveIn.all << self
    end

    def self.all
        @@all
    end

    def screens
        MovieScreen.all_screens.select {|ele| ele.drive_in == self}
    end
 

    def whats_playing
        screens.map {|ele| ele.name }
    end

    def full_house?
        screens.all? {|ele| ele.at_capacity? }
    end
end
