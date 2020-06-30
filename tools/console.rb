require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###
d1 = DriveIn.new("test drive-in 1")
d2 = DriveIn.new("test drive-in 2")
c1 = Car.new(2)
c2 = Car.new(3)
c3 = Car.new(6)
c4 = Car.new(1)
megabus = Car.new(200)
m1 = MovieScreen.new("Spy Kids 7", 10, d1)
m2 = MovieScreen.new("Some Marvel Movie", 100, d1)
m3 = MovieScreen.new("Some Oscar Biopic", 5, d2)
c1.current_movie_screen = m1
c2.current_movie_screen = m1
#c3.current_movie_screen = m1

binding.pry

0
