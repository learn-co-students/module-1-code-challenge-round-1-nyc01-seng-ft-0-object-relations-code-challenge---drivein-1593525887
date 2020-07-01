class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in
  @@all_screens = []
  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @@all_screens << self
  end

  def self.all_screens
    @@all_screens
  end

  def cars
      Car.all.select do |ms_instance|
        ms_instance.movie_screen == self
      end
  end


  def number_of_viewers
    cars.map do |ele|
      ele.passenger_count
    end.sum
  end

  def at_capacity?
    if number_of_viewers >= self.capacity
      return true
    else
      return false
    end
  end

#need to refactor. want to set up a condition where it cannot be a negative number
  def available_spots
    if self.capacity < number_of_viewers
      self.at_capacity - number_of_viewers
    else
      return "At Capacity"
    end
  end

#need to refactor
  # def add_car(car)
  #   if car.passenger_count >= available_spots
  #      return "Sold out!"
  #    else
  #      ScreenCar.new(self, car)
  #      "Enjoy"
  #    end
  # end

end
