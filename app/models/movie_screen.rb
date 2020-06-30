#has many cars
class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  
  @@all = []
  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @@all << self
  end

  def cars
    Car.all.select do |car_object|
      car_object.current_movie_screen == self
    end
  end

  def number_of_viewers
    self.cars.sum do |car_object|
      car_object.passenger_count
    end
  end

  def at_capacity?
    #puts "#{movie_title} at #{number_of_viewers}/#{capacity} capacity"
    number_of_viewers >= capacity
  end

  def available_spots
    capacity - number_of_viewers
  end

  def add_car(car_object)
    if at_capacity?
      "Sold Out!"
    else
      car_object.current_movie_screen = self
      "Enjoy!"
    end
  end

  def add_car_realistic(car_object)
    if at_capacity?
      "Sold Out!"
    elsif (car_object.passenger_count + number_of_viewers) > capacity
      "We're sorry. There's not enough tickets left for all of you. Perhaps you should kick out some passengers and try again."
    else
      car_object.current_movie_screen = self
      "Enjoy!"
    end
  end

  def self.all
    @@all
  end

  def self.movie_screens
    @@all
  end
end
