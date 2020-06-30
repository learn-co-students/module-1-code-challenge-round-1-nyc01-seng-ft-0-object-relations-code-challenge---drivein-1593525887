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
        array = screens.map {|ele| ele.at_capacity? }
        #MovieScreen.all_screens
        count = 0
        array.each do |ele|
            if ele == false
                count += 1
            end
        end
        #return all that are at cap 
        if count == 0 
            return true
        end
        return false
    end
end
