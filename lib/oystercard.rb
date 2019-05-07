class Oystercard
  attr_accessor :balance
  DEFAULT_VALUE = 0

  def initialize(balance= DEFAULT_VALUE)
    @balance = balance
  end

  def top_up(amount)
    @balance += amount
  end
end
