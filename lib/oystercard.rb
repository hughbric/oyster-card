require 'journey'

class Oystercard
  attr_reader :balance, :journeys
  DEFAULT_BALANCE = 0
  MAXIMUM_BALANCE = 90

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @journeys = []
  end

  def top_up(amount)
    raise "Top-up Limit Reached." if (@balance + amount) > MAXIMUM_BALANCE
    @balance += amount
  end

  def touch_in(station)
    raise "Insufficient funds." if @balance < 1
    @journey = Journey.new(station)
  end

  def touch_out(station)
    deduct(@journey.fare)
    @journey.finish(station)
    @journeys << {entry_station: @journey.entry_station, exit_station: @journey.exit_station}
  end

  private

  def deduct(amount)
    @balance -= amount
  end
end
