require 'pry'

class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in

  @@all_screens = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @viewers = []
    @@all_screens << self
  end

  def number_of_viewers
    Car.all.find do |car_instance|
      if car_instance.current_movie_screen == self
        binding.pry
      end
    end
  end

  def self.all_screens
    @@all_screens
  end
end
