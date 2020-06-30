


class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  
  @@all= []

#Movie screen is used as the SSOT for DriveIn and Cars


  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @@all << self
  end

def self.movie_title #I used self.movie_title to ensure it is one specific instance of a movie screen, and grab the title.
    self.all.select do 
    {|id| id.movie_title == self}
    end
end

def self.movie_capacity
  self.all.select do
    {|id| id.movie_capacity == self}
  end
end

def number_of_viewers #Number of viewers should be equal to the capacity of the drivein.
  Car.capacity
end



def all_screens
  @@all
end

#def self.all
#@all
#end

def car   
  Car.all.select do 
    {|id| id == self.car}
  end
end

def drive_in
  DriveIn.all.select do
  {|id| id == self.drive_in}
  end
end



end


