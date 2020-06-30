class Car
  attr_accessor :passenger_count #passenger_count can be changed & returns the number of passengers in the car.
  attr_reader :movie
  @@all = []
  def initialize(passenger_count)
    @passenger_count = passenger_count
    Car.all << self
  end

  def self.all
    @@all
  end

  #method to join movie with car 
  def watch(movie_obj) #reader for movie added at attr_reader
    @movie = movie_obj
  end


  def current_movie_screen 
   @movie
  end

  def current_movie_screen=(moviescreen_obj) #come back to this one
   @movie = moviescreen_obj
  end



end
