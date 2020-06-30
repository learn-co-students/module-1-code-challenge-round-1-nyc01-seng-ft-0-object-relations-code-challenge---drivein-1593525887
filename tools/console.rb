require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###

m1= MovieScreen.new("Hello World",35, "d1")
m2= MovieScreen.new("Bye-Bye", 40, "d2")
m3= MovieScreen.new("Rich Mom", 50, "d2")


binding.pry

