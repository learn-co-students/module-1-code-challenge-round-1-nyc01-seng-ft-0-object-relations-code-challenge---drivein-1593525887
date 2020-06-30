class Car
  attr_reader :passenger_count

  @@all = [] 

  def initialize(passenger_count)
    @passenger_count = passenger_count
    @@all << self 
  end

  def self.all
    @@all
  end 

  def current_movie_screen=(movie_screen)
    movie_screen.cars << self  
  end 
 
  #
  def current_movie_screen
    MovieScreen.all_screens.find_all do |movscreen|
      movscreen.each do |car|
        car == self 
      end 
    end  
  end 

end
