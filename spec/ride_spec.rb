require './lib/visitor'
require './lib/ride'

RSpec.describe Ride do
  before :each do 
    @ride1 = Ride.new({ name: "Carousel", min_height: 24, admission_fee: 1, excitement: :gentle })
    expect(@ride1).to be_a(Ride)
  end

  describe "#name" do 
    it "gives the name of the visitor" do 
      expect(@ride1.name).to eq("Carousel")
    end
  end
end