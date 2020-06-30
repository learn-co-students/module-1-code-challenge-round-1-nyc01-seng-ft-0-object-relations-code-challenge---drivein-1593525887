




class Car
  
  attr_accessor :passenger_count
  @@all=[]

  def initialize(passenger_count)
    @passenger_count = passenger_count
    @movie_screen = movie_screen
  end

  def self.all #This will return all instances of car.
    @@all
  end

def passenger_count
  @passenger_count
  self.all.size
end


end
