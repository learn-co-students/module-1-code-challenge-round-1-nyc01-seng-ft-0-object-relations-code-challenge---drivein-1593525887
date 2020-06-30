require 'pry'

class DriveIn #SSOT

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def screens #returns array of all movie screens at Drivein
        MovieScreen.all.map do | el1, el2 |
            if el2 == drive_in && el2 == self #unfinsihed, intending this to iterate through the MovieScreen array (@@all) created in movie_screen.rb and if the drive_in arg. matches, it will push it to a new array here (because of .map)
        end
    end

end
