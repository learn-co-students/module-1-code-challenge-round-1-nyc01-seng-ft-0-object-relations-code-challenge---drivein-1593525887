class MovieScreen

  attr_reader :capacity, :movie_title, :drive_in  
  @@all_screens = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    # binding.pry
    @@all_screens << self
  end

    def self.all_screens
      @@all_screens
    end

    # def cars
    #   binding.pry
    # end


end

