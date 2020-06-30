class Car
  attr_reader :passenger_count
  attr_accessor :movie_screen

  @@all = []
  def initialize(passenger_count, movie_screen=nil)
    @passenger_count = passenger_count
    @movie_screen = movie_screen
    @@all << self
  end

  def self.all
    @@all
  end

  def current_movie_screen
    MovieScreen.all_screen.select {|id| id.car == self}
  end

  def screen=(screen)
    screen.add_car(self)
  end

end
