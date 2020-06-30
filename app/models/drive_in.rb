class DriveIn
    attr_reader :name
    attr_writer :screens 

    def initialize(name)
        @name = name
        @screens = []
    end 

    def screens
        MovieScreen.all_screens.find_all do |mscreen|
            mscreen.drive_in == self
        end 
    end 

    def whats_playing
        screens.map do |element|
            element.movie_title 
        end 
    end 
end
