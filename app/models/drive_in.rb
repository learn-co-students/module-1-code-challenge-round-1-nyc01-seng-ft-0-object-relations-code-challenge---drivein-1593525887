class DriveIn

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name.to_s
        @@all << self
    end

    def self.all
        @@all
    end

    def screens
        MovieScreen.all_screens.select{|ms_object| ms_object.drive_in == self}
    end

    def whats_playing
        self.screens.map{|ms_object| ms_object.movie_title}
    end

    def full_house?
        t_or_f_by_screen = self.screens.map{|ms_object| ms_object.at_capacity?}
        if t_or_f_by_screen.all?{|boolean| boolean == true}
            true
        else
        false
        end
    end




end
