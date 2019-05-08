class Oystercard
  attr_reader :balance
  DEFAULT_VALUE = 0
  MAX_LIMIT = 90

  def initialize(balance= DEFAULT_VALUE)
    @balance = balance
  end

  def top_up(amount)
    raise "Top-up limit reached." if (@balance + amount) > MAX_LIMIT
    @balance += amount
  end
end
