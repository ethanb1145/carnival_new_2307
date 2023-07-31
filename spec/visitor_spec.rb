require './lib/visitor'

RSpec.describe Visitor do
  before :each do 
    @vistor1 = Visitor.new("Bruce", 54, "$10")
    expect(@vistor1).to be_a(Visitor)
  end
end
