class Journey
  attr_reader :entry_station, :exit_station
  MINIMUM_FARE = 1
  PENALTY_FARE = 6

  def initialize(station = nil)
    @entry_station = station
  end

  def complete?
    !!@entry_station
  end

  def fare
    if @entry_station && @exit_station
      MINIMUM_FARE
    else
      PENALTY_FARE
    end
  end

  def finish(station)
    @exit_station = station
    itself
  end
end
