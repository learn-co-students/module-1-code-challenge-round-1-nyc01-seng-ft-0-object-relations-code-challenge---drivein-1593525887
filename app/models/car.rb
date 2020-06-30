require 'pry'

class Car
  attr_reader :passenger_count

  @@all = []

  def initialize(passenger_count)
    @passenger_count = passenger_count
    @@all << self
  end

  def current_movie_screen=(movie_screen)
  end

  def current_movie_screen
    MovieScreen.all_screens.select do |element|
      element.car == self
    end
  end

  def self.all
    @@all
  end

end
