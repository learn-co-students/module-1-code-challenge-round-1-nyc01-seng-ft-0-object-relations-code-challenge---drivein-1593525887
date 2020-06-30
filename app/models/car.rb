class Car
  attr_accessor :passenger_count#, :current_movie_screen
  attr_reader :current_movie_screen

  @@all = []

  def initialize(passenger_count)
    @passenger_count = passenger_count
    Car.all << self
  end

  def self.all
    @@all
  end

  def current_movie_screen=(current_movie_screen)
    current_movie_screen.add_car = self
  end



end
