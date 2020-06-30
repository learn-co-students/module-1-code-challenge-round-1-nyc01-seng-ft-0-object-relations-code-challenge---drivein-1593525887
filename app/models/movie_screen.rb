class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in 
  @@all_screens = [] 

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @@all_screens << self
  end

  def self.all_screens
    @@all_screens
  end

  def drive_in
    DriveIn.name # <-- the association between the drive in and movie screen?
  end

  def cars
    @@all_cars # <-- array of cars at the screen?
  end

  def number_of_viewers
    total = Car.passenger_count
    total # <-- the total number of people viewing?
  end

  def at_capacity?
    if Car.passenger_count == @capacity # <-- checking if the screen as at capacity from the number of viewers?
      true
    else
      false
    end
  end

  def available_spots
    if at_capacity? == false # <-- checks if at capacity method was true of false?
      return true
    else
      return false
    end
  end

  def add_car(car) # <-- checking is the at capacity method was true or not
    if !at_capacity? # <-- adding the car to the total?
      at_capacity += car
      return "Enjoy!"
    else 
      return "Sold Out!" # <-- how to send it to a different instance of the movie screen?
    end
  end


end
