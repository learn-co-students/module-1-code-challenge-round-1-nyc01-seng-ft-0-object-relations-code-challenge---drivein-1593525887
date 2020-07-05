require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### Revision TEST CODE ###
drivein1 = DriveIn.new("Flatiron Cinemas")
drivein2 = DriveIn.new("Cinema Paradiso")

screen1 = MovieScreen.new("Relationship Advice with Tashawn", 28, drivein1)
screen2 = MovieScreen.new("Metaprogramming and stuff", 28, drivein1)
screen3 = MovieScreen.new("Ciao!", 2, drivein2)

car1 = Car.new(4)
car2 = Car.new(4)
car3 = Car.new(4)
car4 = Car.new(4)
car5 = Car.new(2)
car6 = Car.new(8)

car1.current_movie_screen = screen1 
car2.current_movie_screen = screen1
car3.current_movie_screen = screen1
car4.current_movie_screen = screen1

car5.current_movie_screen = screen3
car6.current_movie_screen = screen3

### END OF TESTING 
binding.pry
0


### Version 1 Tests ###
# # this association occurs within the car class; but this needs to be imported (or better yet joined in MScreen)
# # created helper method within MovieScreen to ensure that the associates made within Car Class is incorporated to SSOT on MovieScreen class variable .all_screen
# car1.current_movie_screen = screen1 
# car2.current_movie_screen = screen1

# car5.current_movie_screen = screen2

# # different drive-in and screen; screen 3 belongs to drivein2
# car6.current_movie_screen = screen3