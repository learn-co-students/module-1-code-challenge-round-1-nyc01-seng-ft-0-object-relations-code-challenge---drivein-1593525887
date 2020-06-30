class DriveIn
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def screens
        MovieScreen.all_screens.select{|i| i.drive_in == self}
    end

    def whats_playing
        self.screens.map{|i| i.movie_title}
    end

    def full_house?
        #i want to go thru all the screens and call #at_capacity?. need to know if there is an enumerable or something that will cycle thru and give me true and false if all conditions are true
        #seems the answer is #all? so thats sweet

        self.screens.any?{ |i| i.at_capacity?}
    end




    def self.all
        @@all
    end


end
