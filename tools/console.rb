require_relative '../config/environment.rb'
def reload
  load 'config/environment.rb'
end



di1 = DriveIn.new("Drive-In 1")
di2 = DriveIn.new("Drive-In 2")
di3 = DriveIn.new("Drive-In 3")
di4 = DriveIn.new("Drive-In 4")

c1 = Car.new(1)
c2 = Car.new(2)
c3 = Car.new(3)
c4 = Car.new(4)
c5 = Car.new(5)

ms1 = MovieScreen.new("Grease", 3, di1) #capacity = true
ms2 = MovieScreen.new("Spiderman", 10, di1) #capacity = false
ms3 = MovieScreen.new("Avengers", 10, di1) #capacity = false
ms4 = MovieScreen.new("Bonnie and Clyde", 4, di2)
ms5 = MovieScreen.new("Airplaine!", 2, di3)
ms6 = MovieScreen.new("Mean Girls", 4, di4)


c1.movie_screen = ms1
c2.movie_screen = ms1
c3.movie_screen = ms2
c4.movie_screen = ms3
c5.movie_screen = ms3
### WRITE YOUR TEST CODE HERE ###

binding.pry

0
