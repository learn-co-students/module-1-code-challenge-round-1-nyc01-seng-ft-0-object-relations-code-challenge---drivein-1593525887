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

  def self.all 
    @@all 
  end


# def add_car(car)
#   Car.new()
  
# end

end
