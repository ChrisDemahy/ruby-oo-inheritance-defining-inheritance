# Describes an Vehicle
class Vehicle
  ### CLASS DEFINITIONS ###


  # Class variables
  @@all = [] # list of all Vehicles

  # Reader for all class variable
  def self.all
    @@all
  end  


  ### INSTANCE DEFINITIONS ###

  # instance readers and writers
  attr_accessor :wheel_size, :wheel_number

  # default constructor
  def initialize(wheel_size, wheel_number)
    @wheel_size = wheel_size
    @wheel_number = wheel_number
    self.save
  end

  # saves Vehicle instance to all class variable
  def save
    self.class.all << self
  end

  # instance methods #
  def go
    "vrrrrrrrooom!"
  end

  def fill_up_tank
    "filling up!"
  end 
end