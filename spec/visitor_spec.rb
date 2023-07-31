require './lib/visitor'

RSpec.describe Visitor do
  before :each do 
    @vistor1 = Visitor.new("Bruce", 54, "$10")
    expect(@vistor1).to be_a(Visitor)
  end

  describe "#name" do 
    it "gives the name of the visitor" do 
      expect(@vistor1.name).to eq("Bruce")
    end
  end

  describe "#height" do 
    it "gives the height of the visitor" do 
      expect(@vistor1.height).to eq(54)
    end
  end

  describe "#spending_money" do 
    it "gives the spending money of the visitor" do 
      expect(@vistor1.spending_money).to eq("$10")
    end
  end

  describe "#preferences" do 
    it "gives the preferences of the visitor" do 
      expect(@vistor1.preferences).to eq([])

      @visitor1.add_preference(:gentle)
      @visitor1.add_preference(:thrilling)

      expect(@vistor1.preferences).to eq([:gentle, :thrilling])
    end
  end
end
