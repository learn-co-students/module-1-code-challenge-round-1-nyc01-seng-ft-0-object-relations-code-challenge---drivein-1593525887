require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### WRITE YOUR TEST CODE HERE ###


drivein1 = DriveIn.new("amc")
drivein2 = DriveIn.new("lowes")
drivein3 = DriveIn.new("sunshine")

ms1 = MovieScreen.new("jaws", 2, drivein1)
ms2 = MovieScreen.new("avatar", 50, drivein2)
ms3 = MovieScreen.new("cats", 5, drivein3)
ms4 = MovieScreen.new("pirates", 35, drivein1)

#Third wheel car
car1 = Car.new(3, ms1)
#lonely person car
car2 = Car.new(1, ms2)
#packed car
car3 = Car.new(5, ms3)
#couple car
car4 = Car.new(2, ms1)

car5 = Car.new(8, ms1)

#not intitiated with a screen - so we can add it with.add_car
car6 = Car.new(2)

binding.pry

0
