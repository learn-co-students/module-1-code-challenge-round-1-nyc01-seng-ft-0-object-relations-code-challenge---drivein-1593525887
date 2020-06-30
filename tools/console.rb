require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###

nissan = Car.new(2)
bmw = Car.new(4)
ford = Car.new(3)

regal = DriveIn.new(nissan, screen1, "regal")
amc = DriveIn.new(bmw, screen2, "amc")

screen1 = MovieScreen.new("Nemo", 30, regal)
screen2 = MovieScreen.new("Hobbit", 25, amc)


binding.pry

0
