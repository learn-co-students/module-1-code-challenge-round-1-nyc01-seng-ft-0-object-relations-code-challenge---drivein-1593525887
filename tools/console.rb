require_relative '../config/environment.rb'
require_relative '../app/models/car.rb'
require_relative '../app/models/drive_in.rb'
require_relative '../app/models/movie_screen.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###
DriveIn.new("John")
DriveIn.name
binding.pry

0
