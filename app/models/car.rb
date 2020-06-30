#JOIN MODEL
require 'pry'
class Car
  attr_reader :passenger_count #passenger_count be changed)
  attr_accessor :drive_in, :movie_screen
  @@all = []

  def initialize(passenger_count, drive_in, movie_screen) #passenger_count in integers
    @passenger_count = passenger_count
    @drive_in = drive_in
    @movie_screen = movie_screen
    @@all << self
  end

  def self.all
    @@all
  end

end


#1 - initialize(passenger_count) DONE
#2 - Car#passenger_count DONE
#3 - Car.all DONE
