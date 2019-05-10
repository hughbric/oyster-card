class Journey
  attr_reader :entry_station

  def initialize(station = nil)
    @entry_station = station
  end

  def in_journey?
    !!@entry_station
  end
end
