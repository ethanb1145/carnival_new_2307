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
    most_ridden_ride = @rides.max_by { |ride| ride.rider_log.values.sum }
    most_ridden_ride
  end

  def most_profitable_ride
    most_profitable_ride = @rides.max_by { |ride| ride.total_revenue}
    most_profitable_ride
  end
end