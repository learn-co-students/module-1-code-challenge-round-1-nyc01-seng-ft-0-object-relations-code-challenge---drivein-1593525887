require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Car.new(3)
c2 = Car.new(2)
c3 = Car.new(5)
c4 = Car.new(6)
c5 = Car.new(3)
d1 = DriveIn.new("Drive in one")
ms1 = MovieScreen.new("The Avatar w/ the blue people", 10, d1)
ms2 = MovieScreen.new("Fight Club", 11, d1)
sc1 = ScreenCar.new(ms1,c1)
sc1 = ScreenCar.new(ms1,c2)
sc2 = ScreenCar.new(ms2,c3)
sc2 = ScreenCar.new(ms2,c4)

binding.pry

0
