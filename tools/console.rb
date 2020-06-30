require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Drive-ins
drivein1 = DriveIn.new("Ye Olde Drive-in")
drivein2 = DriveIn.new("Flatiron Drive-in")

#Screens
screen1 = MovieScreen.new("Knives Out", 3, drivein1)
screen2 = MovieScreen.new("The Lighthouse", 2, drivein1)
screen3 = MovieScreen.new("The Social Network", 10, drivein2)

#Cars
car1 = Car.new(4)
car2 = Car.new(2)
car3 = Car.new(3)
car4 = Car.new(4)
car5 = Car.new(5)

car1.current_movie_screen = screen1
car2.current_movie_screen = screen1
car3.current_movie_screen = screen2
car4.current_movie_screen = screen1
car5.current_movie_screen = screen2

drivein1.full_house?

binding.pry

0
