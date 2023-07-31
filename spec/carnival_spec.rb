require './lib/carnival'
require './lib/visitor'
require './lib/ride'

RSpec.describe Carnival do
  before :each do 
    @carnival = Carnival.new
    expect(@carnival).to be_a(Carnival)
  end
end