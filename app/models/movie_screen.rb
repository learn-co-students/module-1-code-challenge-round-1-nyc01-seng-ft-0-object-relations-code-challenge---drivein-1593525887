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
    cars_array = []
    ScreenCar.all.each do |cars|
      cars_array << cars.car
    end
    cars_array
  end


  def number_of_viewers
    cars.map do |ele|
      ele.passenger_count
    end.sum
  end

  def at_capacity?
    if number_of_viewers >= 10
      return true
    else
      return false
    end
  end
#need to refactor
  def available_spots
    10 - number_of_viewers
  end


  def add_car(car)
    if car.passenger_count >= available_spots
       return "Sold out!"
     else
       ScreenCar.new(self, car)
       "Enjoy"
     end
  end

end
