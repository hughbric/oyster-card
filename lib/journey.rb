class Journey
  attr_reader :entry_station, :exit_station
  # MINUMUM_FARE = 1
  PENALTY_FARE = 6

  def initialize(station = nil)
    @entry_station = station
  end

  def complete?
    !!@entry_station
  end

  def fare
    PENALTY_FARE
  end

  def finish(station)
    @exit_station = station
    itself
  end
end
