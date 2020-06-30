class MovieScreen
  attr_reader :capacity, :movie_title
  attr_accessor :all_cars, :drivein

  @@all = []

  def initialize(movie_title, capacity, drivein, all_cars)
    @movie_title = movie_title
    @capacity = capacity
    @drivein = drivein
    @all_cars = all_cars
    @@all << self
  end


  # - `MovieScreen#initialize(movie_title, capacity, drive_in)`
  # - A movie screen should be initialized with a movie title as a string, capacity (as an integer), and a `drive_in` object.
  # - The movie title, capacity, and drive in **cannot** be changed after the MovieScreen is initialized.

  def self.all
    @@all
  end

  def movie_title
    #- should return the movie title
    @movie_title
  end

  def capacity
    #- should return the `MovieScreen`'s capacity
    @capacity
  end

  def drive_in
    #- should return the `DriveIn` associated with this `MovieScreen`
    MovieScreen.all.map { |screen| screen.drivein}
  end

  def MovieScreen.all_screens
    #- Returns an array of all movie screens that have been created.
    @@all
  end

  def cars
    #- Returns an array of all cars currently at this movie screen.
    MovieScreen.all.map { |screens| screens.cars }
  end

  def number_of_viewers
    #- Returns the total number of passengers viewing the movie, from all the cars currently at this movie screen

  end

  def at_capacity?
    #- Returns a boolean. If the number of cars at this movie screen is equal to or above the capacity of the movie screen, returns `true`. Otherwise, returns `false`.
    MovieScreen.all.map {|screens| screens}
  end

  def available_spots
    #- Returns the number of spots for cars available at this movie screen. This should be the capacity minus the number of cars currently at this movie screen.
    # if screen1.capacity - cars arr.length
  end


  def add_car(car)
    # - Takes in a `Car` instance as the argument
    # - Depending on the available capacity of the movie screen, associates the `Car` with this movie screen.
    # - If the movie screen is _not_ at capacity, updates the car's current movie screen and returns the string `"Enjoy!"`.
    # - If the movie screen is at capacity, it should return the string "Sold Out!", and should not associate the car to the movie screen.
    Car.new(car, self)
  end

end
