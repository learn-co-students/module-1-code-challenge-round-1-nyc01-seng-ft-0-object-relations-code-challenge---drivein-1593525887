class DriveIn

  #ssot

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end



#   - `DriveIn#initialize(name)`
#   - A drive-in should be initialized with a `name` as a string.
#   - The name **cannot** be changed after the drive-in is initialized.

  def self.all
     @@all
  end

  def name
    #- should return the name of the `DriveIn`
    @name
  end

  def screens
    #- Returns an array of all movie screens at this drive-in.
    MovieScreen.all.map {|screen| screen if screen.drivein == self}.compact
  end

  def whats_playing
    #- Returns an array of all the names of the movies playing at the movie screens at this drive-in.
    MovieScreen.all.map {|screens| screens.movie_title if screens.drivein == self }.compact
  end

  def full_house?
    #- Returns true if all movie screens at _this_ drive-in are at capacity.
    MovieScreen.all.map { |screens| screens.capacity = screens.cars}
  end

end
