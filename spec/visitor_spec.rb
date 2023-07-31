require './lib/visitor'

RSpec.describe Visitor do
  before :each do 
    @visitor1 = Visitor.new("Bruce", 54, "$10")
    expect(@visitor1).to be_a(Visitor)
  end

  describe "#initialize" do 
    it "gives the name of the visitor" do 
      expect(@visitor1.name).to eq("Bruce")
    end

    it "gives the height of the visitor" do 
      expect(@visitor1.height).to eq(54)
    end
    
    it "gives the spending money of the visitor" do 
      expect(@visitor1.spending_money).to eq(10)
    end
  end

  describe "#preferences" do 
    it "gives the preferences of the visitor" do 
      expect(@visitor1.preferences).to eq([])

      @visitor1.add_preference(:gentle)
      @visitor1.add_preference(:thrilling)

      expect(@visitor1.preferences).to eq([:gentle, :thrilling])
    end
  end

  describe "#tall_enough?" do 
    it "checks if visitor meets height requirement" do 
      expect(@visitor1.tall_enough?(54)).to be(true)

      visitor2 = Visitor.new('Tucker', 36, '$5')

      expect(visitor2.tall_enough?(54)).to be(false)

      visitor3 = Visitor.new('Penny', 64, '$15')

      expect(visitor3.tall_enough?(54)).to be(true)
    end
  end
end
