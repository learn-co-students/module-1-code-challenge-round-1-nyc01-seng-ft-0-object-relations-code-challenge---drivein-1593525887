require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###

amc = DriveIn.new("Ame")
regal = DriveIn.new("Regal")
plex = DriveIn.new("Plex")

car1 = Car.new(5)
car2 = Car.new(2)
car3 = Car.new(3)
car4 = Car.new(4)

m1 = MovieScreen.new("It", 15, amc, car2)
m2 = MovieScreen.new("Saw", 25, regal, car3)
m3 = MovieScreen.new("Avenger", 20, plex, car4)
m4 = MovieScreen.new("Sheeps", 15, amc, car1)

binding.pry

0
