require 'pry'
require_relative '../app/models/car.rb'
require_relative '../app/models/drive_in.rb'
require_relative '../app/models/movie_screen.rb'

def reload
  load 'config/environment.rb'
end

di1 = DriveIn.new("New Drive In")
di2 = DriveIn.new("Come And See")


ms1 = MovieScreen.new("Star Wars", 100, di1)
ms2 = MovieScreen.new("LoTR", 200, di1)
ms3 = MovieScreen.new("LoTR", 200, di2)
ms4 = MovieScreen.new("Avatar", 200, di2)
ms5 = MovieScreen.new("Hello", 100, di2)

car1 = Car.new(100)
car2 = Car.new(2)
car3 = Car.new(3)

### WRITE YOUR TEST CODE HERE ###

binding.pry

0
