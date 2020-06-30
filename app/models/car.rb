class Car

  attr_accessor :passenger_count
  
  @@all =[]
  def initialize(passenger_count)
    @passenger_count = passenger_count
    @@all << self
  end

  def self.all
     @@all
  end

  def current_movie_screen
      MovieScreen.all.select {|x| x.car == self} #bad object from add_car method...
  end



end
