require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###

#drive_in is the Place where magic happens
drive_in1 = DriveIn.new("IBM Movies")
drive_in2 = DriveIn.new("Date Night Movies")

#SSOT Joiner should be movieScreen
movie1 = MovieScreen.new("Titanic", 10, drive_in1)
movie2 = MovieScreen.new("Howl's Moving Castle", 8, drive_in2)


#cars should know which movie it is watching
car1 = Car.new(5)
car1.current_movie_screen = movie1
car2 = Car.new(5)
car2.current_movie_screen = movie1
car3 = Car.new(4)
car3.current_movie_screen = movie2
car4 = Car.new(5) 
car4.current_movie_screen = movie2 


binding.pry

0
