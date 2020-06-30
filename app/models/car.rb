# belongs to movie screen
#current_movie_screen is an instance of ms!!!
class Car
  attr_accessor :passenger_count, :current_movie_screen
  @@all = []

  def initialize(passenger_count, current_movie_screen=nil)
    @passenger_count = passenger_count
    @current_movie_screen = current_movie_screen
    @@all << self
  end

  def self.all
    @@all
  end

  #became an attr_accessor
  #def current_movie_screen
   # @current_movie_screen
  #end

  #became an attr_accessor
  #def current_movie_screen=(new_movie_screen)
   # @current_movie_screen = new_movie_screen
  #end

end
