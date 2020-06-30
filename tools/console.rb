require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### WRITE YOUR TEST CODE HERE ###
puts arnolds = DriveIn.new("Arnold's")

puts MovieScreen.new("Jaws", 100, arnolds)

puts Car.new(4)

binding.pry

0
