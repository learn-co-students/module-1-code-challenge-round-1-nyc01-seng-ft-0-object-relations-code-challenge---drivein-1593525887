class Car
  attr_accessor :passenger_count, :movie_screen


  @@all =[]

  def initialize(passenger_count, movie_screen=nil)
    @passenger_count = passenger_count
    @movie_screen = movie_screen
    @@all << self
  end

  def self.all
    @@all
  end

  def current_movie_screen
    @movie_screen
    # @@all.select {|car_inst| car_inst.movie_screen if car_inst == self}
  end


  def current_movie_screen=(ms)
    @@all.select {|car_inst| ms = car_inst.movie_screen}
    end
  end

    
end



# - `Car#current_movie_screen`
#   - Returns the current movie screen that a particular car is associated with.
# - `Car#current_movie_screen=`
#   - Assigns a movie screen object to a particular car to indicate which movie screen that car is currently at.
#   - **Note:** this will happen _after_ a car has already been created.













