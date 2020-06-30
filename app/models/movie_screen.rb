class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  
  @@all = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    self.class.all << self
  end

  def self.all
    @@all
  end

  #This is redundant with MovieScreen.all, but I didn't realize the instructions asked for a method with this title over .all till the very end.
  #My bad!
  def self.all_screens
    @@all
  end

  def cars
    Car.all.select do |element|
      element.current_movie_screen == self
    end
  end

  def number_of_viewers
    passengers = cars.map do |element|
      element.passenger_count
    end
    passengers.sum

    ##Couldn't get this to work, but its clearly the more elegant solution:
    # cars.inject do |element|
    #   element.passenger_count
    # end
  end

  def at_capacity?
    cars.length >= self.capacity ? true : false
  end

  def available_spots
    self.capacity - cars.length
  end

  def add_car(car)
    if at_capacity?
      "Sold Out!"
    else
      car.current_movie_screen=(self)
      "Enjoy!"
    end
  end
end