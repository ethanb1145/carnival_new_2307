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

  def total_revenue
    @rides.sum { |ride| ride.total_revenue}
  end

  def most_popular_ride
    
  end

end