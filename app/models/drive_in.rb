class DriveIn

    attr_accessor :car, :drive_in
    attr_reader :name, :capacity

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def add_car_to_drivein(car)
        self.car = car
        # self.drive_in = drive_in  #something isn't right with this. Using this to connect drive in to cars... 
    end

end
