class Car
  attr_reader :passenger_count
  @@all = []

  def initialize(passenger_count)
    @passenger_count = passenger_count
    self.class.all << self
  end

  def self.all
    @@all
  end

  def current_movie_screen
    @movie_screen
  end

  def current_movie_screen=(movie_screen)
    @movie_screen = movie_screen
  end
end
