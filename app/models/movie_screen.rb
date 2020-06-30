require 'pry'
class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  

  @@all = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @@all << self
  end

  def self.all_screens
    @@all
  end

  def self.cars
    Cars.all
  end

  def self.number_of_viewers
    
  end  

end
