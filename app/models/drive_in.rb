class DriveIn

  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end

  def screens
    MovieScreen.all_screens.select do |screen|
      screen.drive_in == self
    end
  end

  def whats_playing
    movies_names = []
    MovieScreen.all_screens.each do |movie|
      movies_names << movie.movie_title
    end
    movies_names
  end

  def full_house?
    if MovieScreen.

    end
  end

end
