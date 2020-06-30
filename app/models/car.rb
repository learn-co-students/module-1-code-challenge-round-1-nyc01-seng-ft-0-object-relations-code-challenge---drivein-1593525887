class Car
  attr_reader :passenger_count, :movie_screen
  @@all=[]

  def initialize(passenger_count, movie_screen)
    @passenger_count = passenger_count
    @movie_screen=movie_screen
    @@all<<self
  end
  def passenger_count
    @passenger_count
  end 
  def self.all
    @@all 
  end 
  def current_movie_screen
    self.movie_screen
  end 
  def current_movie_screen=(movie_screen)
    @movie_screen=movie_screen
  end 



end
