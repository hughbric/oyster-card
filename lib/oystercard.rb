require 'journey'

class Oystercard
  attr_reader :balance, :journeys #:entry_station, :exit_station
  DEFAULT_BALANCE = 0
  MAXIMUM_BALANCE = 90
  #MINUMUM_FARE = 1

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    #@entry_station = nil
    @journeys = []
    @journey = ''
  end

  def top_up(amount)
    raise "Top-up Limit Reached." if (@balance + amount) > MAXIMUM_BALANCE
    @balance += amount
  end

  def touch_in(station = '')
    raise "Insufficient funds." if @balance < 1

    @journey = Journey.new(station)
    #@entry_station = station
  end

  def touch_out(station = '')
    deduct(@journey.fare)
    #@exit_station = station
    @journey.finish(station)
    @journey = {entry_station: @journey.entry_station, exit_station: @journey.exit_station}
    #@entry_station = nil
  end

  def journeys
    @journeys << @journey
  end

  private

  def deduct(amount)
    @balance -= amount
  end
end
