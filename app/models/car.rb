class Car
  attr_accessor :passenger_count, :movie_screen
  @@all = []
  def initialize(passenger_count, movie_screen=nil)
    @movie_screen = movie_screen
    @passenger_count = passenger_count
    @@all << self
  end
  def self.all
    @@all
  end

  def current_movie_screen
    @movie_screen
  end

  def current_movie_screen=(ms)
    @movie_screen = ms
  end


end
