
class Car
  attr_reader :passenger_count

  @@all_cars = []
  def initialize(passenger_count)
    @passenger_count = passenger_count
    @@all_cars << self
  end

  def self.all_cars # <-- an array of all the car instances?
    @@all_cars
  end

  def current_movie_screen=(movie_screen) # <-- setting which movie screen for the car to be at?
    @movie_screen = movie_screen
  end

  def current_movie_screen
    MovieScreen # <-- the association between the car and movie screen?
  end
end
