class Car

  attr_reader :passenger_count
  attr_accessor :movie_screen, :drive_in

  @@all = []

  def initialize(passenger_count)
    @passenger_count = passenger_count
    # @movie_screen = movie_screen
    # @drive_in = drive_in
    @@all << self
  end

  
  # - `Car#initialize(passenger_count)`
  # - A car should be initialized with a `passenger_count` (as an integer).
  # - the passenger count **can** be changed after the `Car` is initialized

  def passenger_count
    #- Returns the number of passengers in the car.
  end

  def self.all
    #- Returns an array of all car instances that have been created.
    @@all
  end

  def current_movie_screen
    # - Returns the current movie screen that a particular car is associated with.

  end

  def current_movie_screen=()
    #- Assigns a movie screen object to a particular car to indicate which movie screen that car is currently at.
    #- **Note:** this will happen _after_ a car has already been created.
    
  end


end
