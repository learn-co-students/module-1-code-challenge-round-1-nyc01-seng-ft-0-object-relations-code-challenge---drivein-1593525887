require_relative '../config/environment.rb'
require_relative '../app/models/car.rb'
require_relative '../app/models/drive_in.rb'
require_relative '../app/models/movie_screen.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###

drivein1 = DriveIn.new("DR 1")
drivein2 = DriveIn.new("DR 2")
drivein3 = DriveIn.new("DR 3")

ms1 = MovieScreen.new("Movie1", 100, drivein1)
ms2 = MovieScreen.new("Movie1", 100, drivein2)
ms3 = MovieScreen.new("Movie1", 100, drivein3)

car1 = Car.new(1, drivein1, ms1)
car2 = Car.new(2, drivein2, ms2)
car3 = Car.new(3, drivein3, ms3)

#ms1.current_movie_screen

binding.pry
