require "pry"

class Car
  attr_reader :passenger_count
  attr_accessor :current_movie_screen
  @@all = []

  def initialize(passenger_count)
    @passenger_count = passenger_count

    @@all << self
  end

  def self.all
    @@all
  end

end
