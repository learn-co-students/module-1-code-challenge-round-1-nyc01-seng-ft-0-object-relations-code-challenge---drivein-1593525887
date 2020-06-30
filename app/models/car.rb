class Car
  attr_reader :passenger_count
  attr_writer :passenger_count
#the passenger count **can** be changed 
  @@all = []

#initialize with an integer 
  def initialize(passenger_count)
    @passenger_count = passenger_count
    @@all << self 
    @count = count += 1 
  end

  def passenger_count
    count = 0
    self.count 
  end
        
  end 

  def self.all 
    @@all 
  end 

  def current_movie_screen 
    MovieScreen.all.select do |movie_screen_car|
      movie_screen_car.car == self 
    end 
  end 

  def current_movie_screen=(car)
    current_movie_screen.self 
  end 



end
