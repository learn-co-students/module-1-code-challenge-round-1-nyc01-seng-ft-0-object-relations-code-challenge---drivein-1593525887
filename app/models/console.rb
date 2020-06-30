require 'pry'
require_relative './car.rb'
require_relative './movie_screen.rb'
require_relative './drive_in.rb'


puts arnolds = DriveIn.new("Arnold's")

puts jaws = MovieScreen.new("Jaws", 100, arnolds)

puts Car.new(4)

puts arnolds.screens

puts family = Car.new(3)

puts family.current_movie_screen=(jaws)

puts family.current_movie_screen

puts family.current_movie_screen.number_of_viewers

# binding.pry