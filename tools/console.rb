require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


### WRITE YOUR TEST CODE HERE ###

drivein1 = DriveIn.new("Bobs Movies")
drivein2 = DriveIn.new("Cinerama")
drivein3 = DriveIn.new("Drive n Eat")

screen1 = MovieScreen.new("Pulp Fiction", 20, drivein1, 0)
screen2 = MovieScreen.new("Robocop", 15, drivein1, 0)
screen3 = MovieScreen.new("Terminator", 25, drivein1, 0)
screen4 = MovieScreen.new("Speed", 10, drivein2, 0)
screen5 = MovieScreen.new("Die Hard", 22, drivein2, 0)

car1 = Car.new(2)
car2 = Car.new(3)
car3 = Car.new(1)
car4 = Car.new(2)

# screen1.add_car(car1)

binding.pry

0
