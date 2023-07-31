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

  describe "#add_rides" do
    it "can add rides" do 
      expect(@carnival.rides).to eq([])

      ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
      @carnival.add_ride(ride2)

      expect(@carnival.rides).to eq ([ride2])
    end
  end
end