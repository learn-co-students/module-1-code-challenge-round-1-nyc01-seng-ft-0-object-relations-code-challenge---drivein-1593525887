class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in, :car  #return the movie title, capacity & drive_in

  @@all_screens = []
  def initialize(movie_title, capacity, drive_in) #note: drive_in Object
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    MovieScreen.all_screens << self
  end

  def self.all_screens
    @@all_screens
  end

  def cars #Returns an array of all cars currently at this movie screen.
    Car.all.select {|ele| p ele.movie == self }
  end

  def helper
    MovieScreen.all_screens.select {|ele| ele == self}
  end

  #Aggregate Methods
  def number_of_viewers # Returns the total number of passengers viewing the movie, from all the cars currently at this movie screen
    helper.reduce(0) {|sum, each| sum + each.capacity }
  end


  def at_capacity? #boolean return
    #sum of car capacity compare
    total_people = cars.reduce(0) {|sum, each| sum + each.passenger_count}
    movie_cap =  helper.reduce(0) {|sum, ele| sum + ele.capacity }
    if total_people > movie_cap
      return true
    else
      return false
    end
  end

  def available_spots?
      total_people = cars.reduce(0) {|sum, each| sum + each.passenger_count}
      movie_cap =  helper.reduce(0) {|sum, ele| sum + ele.capacity }
      space = movie_cap - total_people
  end

  def add_car(car_obj)
    if at_capacity?
       return "Sold Out!"
    else
      Car.all << car_obj
       car_obj.watch(self)
      p "Enjoy!"
    end
  end




end
