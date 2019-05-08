class Oystercard
  attr_reader :balance
  DEFAULT_VALUE = 0
  MAXIMUM_BALANCE = 90

  def initialize(balance= DEFAULT_VALUE)
    @balance = balance
  end

  def top_up(amount)
    raise "Top-up Limit Reached." if (@balance + amount) > MAXIMUM_BALANCE
    @balance += amount
  end
end
