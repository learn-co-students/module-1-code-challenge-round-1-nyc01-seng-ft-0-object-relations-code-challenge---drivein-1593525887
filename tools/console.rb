require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Car.new(3)
c2 = Car.new(2)
d1 = DriveIn.new("Drive in one")
ms1 = MovieScreen.new("The Avatar w/ the blue people", 10, d1)
sc1 = ScreenCar.new(ms1,c1)
sc1 = ScreenCar.new(ms1,c2)

binding.pry

0
