require 'pry'
class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in #reader only
  @@all = []

  def initialize(movie_title, capacity, drive_in) #(string, integer, object)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @@all << self
  end

  def self.all
    @@all
  end

  def all_screens #returns array of all movie screens
  end

  def cars #cars at each moviescreen
    cars = Cars.all.select do |x|
      x.movie_title == self
    end
  end

  def current_movie_screen #return movie screen for car
    @@all.select do |car|
      car.movie_screen == self
    end
  end

  def number_of_viewers
  end

  def add_car(new_car)
    add_car = Car.new()
  end


end



#binding.pry
