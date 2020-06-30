class MovieScreen

  attr_reader  :movie_title, :capacity, :drive_in

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

  def drive_in
     MovieScreen.all.select { |x| x.drive_in == self.drive_in}
  end

  def self.all_screens
    MovieScreen.all.map { |screen|screen.movie_title}
  end

  # def cars
  #     MovieScreen.all.select { |x| x.car == self.}



end
