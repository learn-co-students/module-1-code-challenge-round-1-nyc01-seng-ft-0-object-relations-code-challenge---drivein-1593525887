# Revision: Correcting error with my relationship model
class Car

    attr_accessor :passenger_count, :current_movie_screen

    @@all = []

    def initialize(passenger_count)
        @passenger_count = passenger_count
        self.class.all << self
    end

    def self.all
        @@all
    end

end