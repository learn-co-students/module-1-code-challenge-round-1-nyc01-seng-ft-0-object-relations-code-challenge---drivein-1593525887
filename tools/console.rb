require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Drive-ins
schmoopy_drivein = DriveIn.new("Schmoopies Drive in")
cool_cats_drivein = DriveIn.new("Cool Cats Drive in")
greenpoint_drivein = DriveIn.new("Greenpoint Drive in")


#MovieScreen
pulp_fiction = MovieScreen.new("Pulp Fiction", 30, schmoopy_drivein)
fast_and_furious = MovieScreen.new("Fast and the furious", 20, cool_cats_drivein)
fifth_element = MovieScreen.new("Fifth element", 15, greenpoint_drivein)

#Cars
c1 = Car.new(4)
c2 = Car.new(3)
c3 = Car.new(2)
c4 = Car.new(5)

#add_car_to_drivein
schmoopy_drivein.add_car_to_drivein(c1)
cool_cats_drivein.add_car_to_drivein(c2)
greenpoint_drivein.add_car_to_drivein(c3)
greenpoint_drivein.add_car_to_drivein(c3)

binding.pry

0
