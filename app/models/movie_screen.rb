class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  
  @@all_screens = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @@all_screens << self
  end

  

  def cars
    Car.all.select{|i| i.current_movie_screen == self}
  end

  def number_of_viewers
    #i have to find all the cars in this movie screen and sum up their passenger_count
    self.cars.sum(0){ |car| car.passenger_count}
  end

  def at_capacity?
    self.cars.count >= @capacity
  end

  def available_spots
    if self.at_capacity?
      return 0
    else
     @capacity - self.cars.count
    end
  end

  def add_car(car)

    if at_capacity?
      "Sold Out!"
    else
      car.current_movie_screen = self
      "Enjoy!"
    end
  end









  def self.all_screens
    @@all_screens
  end

end
