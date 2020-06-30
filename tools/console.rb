require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jeep = Car.new(4)
toyota = Car.new(3)
fiat = Car.new(1)

drivein_1 = DriveIn.new("cinema star")

screen = MovieScreen.new("Rocky", 100, drivein_1) 
screen_2 = MovieScreen.new("Titanic", 200, drivein_1)


jeep.current_movie_screen = screen 
toyota.current_movie_screen = screen
fiat.current_movie_screen = screen 




### WRITE YOUR TEST CODE HERE ###

binding.pry

0
