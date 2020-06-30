require 'pry'
class DriveIn
    attr_reader :name
def initialize(name)
    @name=name
end
def screens 
MovieScreen.all.select{|movie| movie.drive_in == self}
end
end
