class Car
  attr_accessor :passenger_count
  @@all = []
  def initialize(passenger_count)
    @passenger_count = passenger_count
    @@all << self
  end
  def self.all
    @@all
  end

  def current_movie_screen
    MovieScreen.all.select do |car_instance|
      car_instance.car == self
    end
  end

  def current_movie_screen=(car)
    @car = car
  end
end
