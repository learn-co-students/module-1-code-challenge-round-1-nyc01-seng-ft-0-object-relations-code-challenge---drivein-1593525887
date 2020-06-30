require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###
car1 = Car.new(4)
car2 = Car.new(4)
car3 = Car.new(4)
car4 = Car.new(4)

drive_in1 = DriveIn.new("1st street")
drive_in2 = DriveIn.new("2nd street")
drive_in3 = DriveIn.new("3rd street")

movie_screen1 = MovieScreen.new(car1,'Gone with the wind', 100, drive_in1)
movie_screen2 = MovieScreen.new(car1,'virgina wolf', 100, drive_in2)
movie_screen3 = MovieScreen.new(car1,'bad santa', 100, drive_in3)
movie_screen4 = MovieScreen.new(car1,'the matrix', 100, drive_in1)

puts drive_in1.full_house?