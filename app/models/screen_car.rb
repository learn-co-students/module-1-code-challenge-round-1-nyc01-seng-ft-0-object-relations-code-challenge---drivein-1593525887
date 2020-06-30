class ScreenCar

  attr_accessor :moviescreen, :car
  
  @@all = []

  def initialize(moviescreen, car)
    @@moviescreen = moviescreen
    @car = car
    @@all << self
  end

  def self.all
    @@all
  end


end
