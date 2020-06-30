class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in
  attr_accessor :car

  @@all = []
  def initialize(movie_title, capacity, drive_in, car=[])
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @car = car
    @@all << self
  end

  def self.all_screen
    @@all
  end
  
  def movie
    self.movie_title
  end

  def screen_capacity
    self.capacity
  end

  def ms_drive_in
    self.drive_in
  end

  def number_of_viewers
    self.car.map {|id| id.passenger_count}.sum
  end

  def at_capacity?
    if self.number_of_viewers >= self.screen_capacity
      return true
    else
      return false
    end
  end

  def add_car(new_car)
    if at_capacity? == false
      #MovieScreen.all_screen.map do |id|
      #  if id.car == new_car
      #    id.car.pop(new_car)
      #  end      HOW TO UPDATE THE PREVIOUS SCREEN THAT THIS CAR WAS IN??
      #end
      self.car << new_car
      new_car.movie_screen = self
      p "Enjoy"
    else
      p "Sold Out!"
    end
  end

end
