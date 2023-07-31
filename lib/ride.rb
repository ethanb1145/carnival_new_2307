class Ride
  attr_reader :name, :min_height, :admission_fee, :excitement

  def initialize(ride_info)
    @name = ride_info[:name]
    @min_height = ride_info[:min_height]
    @admission_fee = ride_info[:admission_fee]
    @excitement = ride_info[:excitement]
    @rider_log = {}
  end

  def rider_log
    @rider_log
  end

  def board_rider(visitor)
    @rider_log[visitor] ||= 0
    @rider_log[visitor] += 1
    
    visitor.spending_money -= @admission_fee
  end

  def total_revenue
    @rider_log.values.sum
  end
end