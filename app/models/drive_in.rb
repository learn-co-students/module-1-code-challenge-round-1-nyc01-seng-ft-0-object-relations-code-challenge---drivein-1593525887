class DriveIn
    attr_reader :name
    
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def the_name
        self.name
    end

    def all_ms          #helper
        MovieScreen.all_screen.select {|id| id.drive_in == self}
    end
    
    def whats_playing
        all_ms.map {|id| id.movie_title}
    end

    def full_house?
        all_ms.map do |id|
            if id.at_capacity? == true
                return true
            else
                return false
            end
        end
    end
    
end
