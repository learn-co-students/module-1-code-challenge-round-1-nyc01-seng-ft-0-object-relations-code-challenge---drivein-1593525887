require 'pry'

class DriveIn

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def screens
    MovieScreen.all_screens.select do |element|
      element.drive_in == self
    end
  end

  def whats_playing
    #Returns an array of all the names of the movies playing at the movie screens at this drive-in.
    screens.map do |element|
      element.movie_title
    end
  end

  def full_house?
    total_viewers = screens.map
    capacity = 0
  end

  def all
    @@all
  end

end
