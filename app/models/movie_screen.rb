# Revision: Correcting error with my relationship model
class MovieScreen

    attr_reader :movie_title, :capacity, :drive_in

    @@all = []

    def initialize(movie_title, capacity, drive_in)
        @movie_title = movie_title
        @capacity = capacity
        @drive_in = drive_in
        self.class.all_screens << self
    end

    def self.all_screens
        @@all
    end

    def cars
        Car.all.select { |car_inst| car_inst.current_movie_screen == self }
    end

    def number_of_viewers
        self.cars.sum { |car_inst| car_inst.passenger_count }
    end

    def at_capacity?
        self.available_spots > 0 ? false : true
    end

    def available_spots
        capacity - cars.count
    end

    def add_car(car)
        case self.at_capacity?
        when false
            car.current_movie_screen = self
            "Enjoy!"
        when true
            "Sold Out!"
        end
    end
end