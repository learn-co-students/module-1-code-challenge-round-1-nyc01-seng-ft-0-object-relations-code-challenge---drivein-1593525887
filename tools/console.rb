require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#random test variables
#4 cars and totalling 20 passengers
car1 = Car.new(12)
car2 = Car.new(5)
car3 = Car.new(1)
car4 = Car.new(2)

d1 = DriveIn.new("AMC")
d2 = DriveIn.new("Showcase")
d3 = DriveIn.new("IFC")


movie1 = MovieScreen.new("Spider-man", 2, d1)
movie2 = MovieScreen.new("Batman",1,d1)
movie3 = MovieScreen.new("WWE PPV",2,d3)

car1.current_movie_screen = movie1
car2.current_movie_screen = movie1
car3.current_movie_screen = movie2



### WRITE YOUR TEST CODE HERE ###

binding.pry

0

## need to create a test to try out Moviescre#number_viewers
