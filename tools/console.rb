require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


### WRITE YOUR TEST CODE HERE ###
car1 = Car.new(1)
car2 = Car.new(2)
car3 = Car.new(3)
car4 = Car.new(3)
car5 = Car.new(3)
car6 = Car.new(3)

drive_in1 = DriveIn.new("drive_in1")
drive_in2 = DriveIn.new("drive_in2")
drive_in3 = DriveIn.new("drive_in3")

#(movie_title, capacity, drive_in)
movie_screen1_1 = MovieScreen.new("movie1_1",5,drive_in1)
movie_screen1_2 = MovieScreen.new("movie1_2",5,drive_in1)
movie_screen2 = MovieScreen.new("movie2",5,drive_in2)
movie_screen3 = MovieScreen.new("movie3",2,drive_in3)

car1.current_movie_screen=(movie_screen2)
car2.current_movie_screen=(movie_screen2)
car3.current_movie_screen=(movie_screen2)

car4.current_movie_screen=(movie_screen3)
car5.current_movie_screen=(movie_screen3)

binding.pry

0
