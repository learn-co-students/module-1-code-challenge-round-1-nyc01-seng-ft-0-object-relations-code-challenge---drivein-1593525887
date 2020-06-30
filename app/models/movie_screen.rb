class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  
  attr_writer :cars
  @@all = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @@all << self 
    @cars = []
  end

  def self.all_screens
    @@all
  end 

  def cars 
    @cars
  end 
  #
  def number_of_viewers 
    self.cars.map do |passengers|
      passengers.passenger_count
    end.sum
  end 

  def at_capacity?
    if self.number_of_viewers > self.capacity 
      true
    end
    false
  end 
  
  def available_spots 
    self.capacity - self.number_of_viewers 
  end 

  def add_car(car)
  end 


end
