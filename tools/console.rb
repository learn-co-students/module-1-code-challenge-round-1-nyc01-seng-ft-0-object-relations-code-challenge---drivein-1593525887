# require_relative '../config/environment.rb'

require 'pry'

require_relative '../app/models/car'
require_relative '../app/models/movie_screen'
require_relative '../app/models/drive_in'


# def reload
#   load 'config/environment.rb'
# end


### WRITE YOUR TEST CODE HERE ###

drive_in1 = DriveIn.new("DriveIn1")
drive_in2 = DriveIn.new("DriveIn2")
drive_in3 = DriveIn.new("DriveIn3")
drive_in4 = DriveIn.new("DriveIn4")

movie_screen1 = MovieScreen.new("Movie 1", 50, drive_in1)
movie_screen2 = MovieScreen.new("Movie 2", 40, drive_in2)
movie_screen3 = MovieScreen.new("Movie 3", 25, drive_in3)
movie_screen4 = MovieScreen.new("Movie 4", 60, drive_in4)
movie_screen5 = MovieScreen.new("Movie 5", 45, drive_in1)
movie_screen6 = MovieScreen.new("Movie 6", 35, drive_in2)

car1 = Car.new(3, movie_screen1)
car2 = Car.new(3, movie_screen2)
car3 = Car.new(1, movie_screen4)
car4 = Car.new(4, movie_screen5)



binding.pry

0
