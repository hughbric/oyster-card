class Oystercard
  attr_reader :balance, :entry_station, :exit_station
  DEFAULT_VALUE = 0
  MAXIMUM_BALANCE = 90
  MINUMUM_FARE = 1

  def initialize(balance = DEFAULT_VALUE)
    @balance = balance
    @entry_station = nil
  end

  def top_up(amount)
    raise "Top-up Limit Reached." if (@balance + amount) > MAXIMUM_BALANCE

    @balance += amount
  end

  def in_journey?
    !!@entry_station
  end

  def touch_in(station = '')
    raise "Insufficient funds." if @balance < 1

    @entry_station = station
  end

  def touch_out(station = '')
    deduct(MINUMUM_FARE)
    @entry_station = nil
    @exit_station = station
  end

  def list_of_journeys
    list = {}
    list.merge(@entry_station => @exit_station)
  end

  private

  def deduct(amount)
    @balance -= amount
  end
end
