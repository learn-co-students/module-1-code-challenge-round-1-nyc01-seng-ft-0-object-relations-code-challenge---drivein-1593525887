class Car
  attr_accessor :passenger_count, :movie_screen

  @@all =[]

  def initialize(passenger_count)
    @passenger_count = passenger_count.to_i
    @@all << self
  end

  def self.all 
    @@all
  end

  def current_movie_screen 
    self.movie_screen
  end

  



end
