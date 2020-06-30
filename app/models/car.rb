require 'pry'
class Car
  attr_writer :passenger_count

  @@all = []

  def initialize(passenger_count)
    @passenger_count = passenger_count
    @@all << self
  end

  def self.all
    @@all
  end

  def current_movie_screen #getter
    MovieScreen
  end

  def current_movie_screen=(current_movie_screen) #setter
    @current_movie_screen = current_movie_screen
  end
end
