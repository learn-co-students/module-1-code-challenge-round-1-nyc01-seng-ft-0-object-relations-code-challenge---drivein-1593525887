class MovieScreen

  attr_reader :capacity, :movie_title, :drive_in, :lot #:passenger_count

  @@all = []

  def initialize(movie_title, capacity, drive_in) #car needs to go here
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @lot = []
    #save
    MovieScreen.all_screens << self
  end


  def self.all_screens
    @@all
  end

  def cars
    MovieScreen.all_screens.map { |screen_inst| screen_inst.lot if screen_inst == self }.compact
  end

  def number_of_viewers
    # need to iterate through array first; ##NOTE TO SELF - dig into how reduce works mechanically later
    cars.reduce.sum {|x| x.passenger_count }
  end

  def at_capacity?
    if self.number_of_viewers == self.capacity
      true
    else
      false
    end
  end

  def available_spots
    if !(at_capacity?)
      self.capacity - self.number_of_viewers
    else
      "This lot is full."
    end
  end


  # helper method for Car.current_movie_screen=
  def add_car=(car)
    if self.at_capacity?
      "Sold Out!"
    else
     @lot << car
     "Enjoy!"
    end
  end



end

 