require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

car1=Car.new(5)
car2=Car.new(2)

drive1=DriveIn.new("name1")
drive2=DriveIn.new("name2") 


movie1=MovieScreen.new("title1", 5, drive1)
movie2=MovieScreen.new("title1", 6, drive2)


binding.pry

0
