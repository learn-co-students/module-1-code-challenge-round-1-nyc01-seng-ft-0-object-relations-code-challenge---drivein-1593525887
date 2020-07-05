# Revision: Correcting error with my relationship model
class DriveIn

    attr_reader :name

    @@all = []

    def initialize(name)
        # Note: name is a string of DriveIn establishment
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def screens
        MovieScreen.all_screens.select { |screen_inst| screen_inst.drive_in == self }
    end

    def whats_playing
        screens.map { |screen_inst| screen_inst.movie_title }
    end

    def full_house?
        screens.all? { |screen_inst| screen_inst.at_capacity? }
    end

end