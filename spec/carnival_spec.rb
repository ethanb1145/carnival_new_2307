require './lib/carnival'
require './lib/visitor'
require './lib/ride'

RSpec.describe Carnival do
  before :each do 
    @carnival = Carnival.new(7)
    expect(@carnival).to be_a(Carnival)
  end

  describe "#initialize" do 
    it "has a duration" do 
      expect(@carnival.duration).to eq(7)
    end

    it "has rides" do 
      expect(@carnival.rides).to eq([])
    end
  end

  describe "#add_ride" do
    it "can add rides" do 
      expect(@carnival.rides).to eq([])

      ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
      @carnival.add_ride(ride2)

      expect(@carnival.rides).to eq ([ride2])
    end
  end

  describe "#total_revenue" do 
  it "gives the total_revenue of the carnival and its rides" do 
    expect(@carnival.total_revenue).to eq(0)

    ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
    visitor1 = Visitor.new('Bruce', 54, '$10')
    visitor2 = Visitor.new('Tucker', 36, '$5')
    visitor1.add_preference(:gentle)
    visitor2.add_preference(:gentle)
    ride2.board_rider(visitor1)
    ride2.board_rider(visitor2)
    ride2.board_rider(visitor1)
    @carnival.add_ride(ride2)

    expect(ride2.total_revenue).to eq(15)
    expect(@carnival.total_revenue).to eq(15)
  end
end
end