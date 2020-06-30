require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### QUESTIONS
#? how do i force one car per screen? per drivein? this just the assumption we make when initializing?
#? TBD
#? any advantages to creating '.save' in MovieScreen class?
      #save #do i need in aforementioned helper here? doesn't seem to be necessary... revisit how this gets shoveled in later
      # def save
          #? interesting cause car is not initialize so i want to dig deeper into this process

      #   MovieScreen.all_screens << self
      # end


### WRITE YOUR TEST CODE HERE ###
drivein1 = DriveIn.new("Flatiron Cinemas")
drivein2 = DriveIn.new("Cinema Paradiso")

screen1 = MovieScreen.new("Relationship Advice with Tashawn", 28, drivein1)
screen2 = MovieScreen.new("Metaprogramming and stuff", 28, drivein1)
screen3 = MovieScreen.new("Ciao!", 50, drivein2)

car1 = Car.new(4)
car2 = Car.new(4)
car3 = Car.new(4)
car4 = Car.new(4)

car5 = Car.new(2)
car6 = Car.new(8)

# this association occurs within the car class; but this needs to be imported (or better yet joined in MScreen)
#* created helper method within MovieScreen to ensure that the associates made within Car Class is incorporated to SSOT on MovieScreen class variable .all_screen
car1.current_movie_screen = screen1 
car2.current_movie_screen = screen1


car5.current_movie_screen = screen2

# different drive-in and screen; screen 3 belongs to drivein2
car6.current_movie_screen = screen3

### END OF TESTING
binding.pry

0
