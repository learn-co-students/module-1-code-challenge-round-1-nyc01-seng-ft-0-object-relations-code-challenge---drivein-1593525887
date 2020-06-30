class MovieScreen
  
  attr_reader :capacity, :movie_title, :drive_in  
  @@all = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title.to_s
    @capacity = capacity.to_i
    @drive_in = drive_in
    @@all << self
  end

  def self.all_screens
    @@all
  end

  def cars
    Car.all.select{|car_object| car_object.current_movie_screen == self}
  end

  def number_of_viewers
    cars.map{|car_object| car_object.passenger_count}.sum
  end

  def at_capacity?
    self.number_of_viewers >= self.capacity
  end

  def available_spots
    MovieScreen.all_screens.map{|ms_object| ms_object.capacity - self.number_of_viewers}
  end

  def add_car(car)
    if !at_capacity?
      car.movie_screen = self
      "Enjoy!"
    else
      "Sold Out!"
    end
  end

  end


