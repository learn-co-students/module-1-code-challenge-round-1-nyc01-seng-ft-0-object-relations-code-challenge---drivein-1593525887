class Car
  attr_accessor :passenger_count #passenger_count can be changed & returns the number of passengers in the car.
  attr_reader :current_movie_screen
  @@all = []
  def initialize(passenger_count)
    @passenger_count = passenger_count
    Car.all << self
  end

  def self.all
    @@all
  end

  def current_movie_screen 
   @current_movie_screen
  end

  def current_movie_screen=(moviescreen_obj) #come back to this one
   @current_movie_screen = moviescreen_obj
  end


end
