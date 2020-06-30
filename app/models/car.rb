require 'pry'

class Car
  attr_accessor :passenger_count
  attr_reader :movie_screen

  @@all = []

  def initialize(passenger_count)
    @passenger_count = passenger_count
    @movie_screen = []
    @@all << self
  end

  def current_movie_screen=(screen)
    MovieScreen.all_screens.find do |screen_instance|
      self.movie_screen.push(screen_instance)
      binding.pry
    end
  end

  def current_movie_screen
    self.movie_screen
  end

  def self.all
    @@all
  end
end
