class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in, :car 
  @@all = []
  def initialize(movie_title, capacity, drive_in, car)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @car = car
    @@all << self
  end

  def self.all
    @@all
  end
  
end
