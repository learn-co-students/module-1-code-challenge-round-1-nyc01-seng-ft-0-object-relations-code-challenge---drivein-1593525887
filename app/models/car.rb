class Car
  attr_reader :passenger_count
  @@all = []

  def initialize(passenger_count)
    @passenger_count = passenger_count
    @@all << self
  end

  def self.all
    @@all
  end

  def current_movie_screen
    Drive_in.all.select {|car| car.movie_screen == self}
  end

  def current_movie_screen=(current_movie_screen)
    @current_movie_screen = current_movie_screen
  end

end