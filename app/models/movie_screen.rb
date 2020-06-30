class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  

  @@all = []
#A movie screen should be initialized with a string,integer, and a `drive_in` object
  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @@all << self 
  end

  def drive_in 
    self.drive_in.select do |drive_in_object|
      drive_in_object.moviescreen == self 
    end 
  end 

  def movie_title
    self.movie_title 
  end 

  def capacity 
    self.capacity 
  end 

  def movie_title
    self.movie_title
  end 

  def cars 
    Cars.all.select do |car_movie_obj|
      car_movie_obj.moviescreen == self 
    end 
  end 

  def self.all
    @@all 
  end 

  def number_of_viewers
    Cars.all.select do |viewers_car|
      viewers_car.passenger_count == self 
    end 
    self 
  end 

  end 

  def add_car(passenger_count) 
    new_car = Car.new(passenger_count)
    new_car.self 
    if #movie screen is not over capacity 
      #puts "Enjoy"
    else 
      #movie screen is at capacity 
      # puts "Sold Out"
    end 
  end 



if object.include?
    return true 
else 
  false 