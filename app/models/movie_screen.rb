require "pry"

class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  
  @@all = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in

    @@all << self
  end

  def self.all #named all instead of "all_screens" for ease of use
    @@all
  end

  def cars
    Car.all.select {|c| c.current_movie_screen == self}
  end

  def number_of_viewers
    total = self.cars.map {|c| c.passenger_count}
    total.sum(0)
  end

  def at_capacity?
    self.cars.count >= self.capacity
  end

  def available_spots
    self.capacity - self.cars.count
  end

  def add_car (car)
    if self.at_capacity?
      "Sold Out!"
    else
      car.current_movie_screen = self
      "Enjoy!"
    end
  end


end
