require 'pry'


class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in
  attr_accessor :car, :drive_in

  @@all = []

  def initialize(car=nil, movie_title, capacity, drive_in)
    @car = car
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @@all << self
  end

  def self.cars
    @@all.map do |element|
      element.car
    end
  end

  def self.number_of_viewers
    viewers = 0
    @@all.map do |element|
      viewers += element.car.passenger_count
      end
    viewers
  end


  def self.all_screens
    @@all
  end

end
