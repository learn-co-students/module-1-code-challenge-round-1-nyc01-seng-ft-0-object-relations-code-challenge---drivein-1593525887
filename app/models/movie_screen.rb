class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  
  @@all = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    DriveIn.all.map {|drive_in| drive_in.cars == self}
  end

  def number_of_viewers
    cars.map {|viewers| viewers.passenger_count == self}
  end

  def capacity?
    self.cars.count >= capacity
  end

  def available_spots
    capacity - self.cars.count
  end

  def add_car(car)
    If cars.count < @capacity,
      car.update(movie_title == self)
      return "Enjoy!" 
    else  
      return "Sold Out!"
    end
  end
end
