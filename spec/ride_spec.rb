require './lib/visitor'
require './lib/ride'

RSpec.describe Ride do
  before :each do 
    @ride1 = Ride.new({ name: "Carousel", min_height: 24, admission_fee: 1, excitement: :gentle })
    expect(@ride1).to be_a(Ride)
  end

  describe "#initialize" do 
    it "gives the name of the ride" do 
      expect(@ride1.name).to eq("Carousel")
    end

    it "gives the minimum height of the ride" do 
      expect(@ride1.min_height).to eq(24)
    end
 
    it "gives the admission fee of the ride" do 
      expect(@ride1.admission_fee).to eq(1)
    end

    it "gives the excitement of the ride" do 
      expect(@ride1.excitement).to eq(:gentle)
    end

    it "gives the rider log of the ride" do 
      expect(@ride1.rider_log).to eq({})
    end
  end

  describe "#total_revenue" do 
    it "gives the total_revenue of the ride" do 
      expect(@ride1.total_revenue).to eq(0)
    end
  end
end