class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  
  @@all_screens=[]

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @@all_screens<<self
  end
  def movie_title
    @movie_title 
  end 
  def capacity 
    @capacity 
  end 
  def drive_in
    @drive_in
  end 
  def self.all_screens
    @@all_screens
  end
  def cars
    Car.all.select do |car|
      car.movie_screen==self 
    end 
  end
  def number_of_viewers
  end 
  def at_capacity?
    Car.all.each do |car|
      if car.movie_screen>==self.capacity
        true
      else
        false
      end 
    end
  end 
  def available_spots
  end
  def add_car(car)
  end






end
