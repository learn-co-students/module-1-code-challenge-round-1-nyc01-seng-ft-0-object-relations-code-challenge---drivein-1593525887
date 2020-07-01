require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
d1 = DriveIn.new("The Drive n")
ms1 = MovieScreen.new("The Avatar", 10, d1)
car1 = Car.new(4, ms1)




binding.pry

0
