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
  end

end