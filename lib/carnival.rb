class Carnival
  attr_reader :duration

  def initialize(duration)
    @duration = duration
    @rides = []
  end

  def rides 
    @rides
  end

  def add_ride(ride)
    @rides << ride
  end

end