require 'pry'
class Car
  attr_accessor :car_name
  attr_reader :passenger_count, 
@@all = []
  def initialize(passenger_count)
    @car_name=car_name
    @passenger_count = passenger_count
    @@all << self
  end

  def self.all 
@@all
  end
def current_movie_screen=(movie_screen)
  @movie_screen=movie_screen
  
end 

# def car
#   MovieScreen.all.select {|movie| movie.}
# end

end
