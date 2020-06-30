





class DriveIn
attr_reader :name
@@all= []

    def initialize (name)
        @name= name
        @@al << self
    end

    def self
        @@all
    end

    def currently_playing #Here I am accessing the Movie screen class to return the list of all the movie screen instances
        MovieScreen.all
    end

    def full_house #I used the movie screen capacity at the drive in, and set it so if it is greater than the capacity given, it returns truw for full capacity
        if MovieScreen.capacity.all > self.capacity
            return true
        else
            return false
        end
end


end
