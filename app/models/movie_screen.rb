# belongs to drive in and has many cars

class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  
  @@all = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @@all << self
  end

  #originally had this as self.all
  def self.all_screens
    @@all
  end

  def cars
    Car.all.select {|car| car.current_movie_screen == self}
  end

  def number_of_viewers
    cars.map {|car| car.passenger_count}.sum
  end

  def at_capacity?
    #binding.pry
    if cars.count >= @capacity
      true
    else
      false
    end
  end

  def available_spots
    @capacity - cars.count
  end

  def add_car(car_inst)
    if at_capacity?
      p "Sold Out!"
    else
      car_inst.current_movie_screen == self
      p "Enjoy!"
    end
  end

end
