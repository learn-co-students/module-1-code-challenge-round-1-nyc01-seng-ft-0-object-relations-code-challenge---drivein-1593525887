
class DriveIn
    attr_reader :name
    @@all = []

    def initialize(name) #reader only
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def screens #returns array of all movie screens at this drive-in
        Movie_screen.all.select do |x|
            x.name == self
        end
    end


end




