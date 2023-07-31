class Visitor
  attr_reader :name, :height, :spending_money

  def initialize(name, height, spending_money)
    @name = name
    @height = height
    @spending_money = spending_money
    @preferences = []
  end

  def preferences
    @preferences
  end

  def add_preference(preference)
    @preferences << preference
  end

  def tall_enough?(requirement)
    @height >= requirement
  end

  def spending_money
    @spending_money.gsub(/\$/, '').to_i
  end
end