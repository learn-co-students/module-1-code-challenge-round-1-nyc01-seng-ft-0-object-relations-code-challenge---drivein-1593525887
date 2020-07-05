class DriveIn

    attr_reader :name

    @@all = []

    def initialize(name)
        # name as string
        @name = name
        DriveIn.all << self
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
        screens.all? do |screen_inst|
            screen_inst.at_capacity? == true
        end
    end

end
