require_relative 'oystercard'
require_relative 'station'

class Journey

  MINIMUM_FARE = 1
  PENALTY_FARE = 6

  attr_reader :route, :penalty, :exit_zone, :entry_zone

  def initialize
    @route = { entry: nil, exit: nil}
    @penalty = PENALTY_FARE
  end

  def start(entry_station)
    # zone_on_entry(entry_station)
    @route[:entry] = entry_station
  end

  def finish(exit_station)
    # zone_on_exit(exit_station)
    @route[:exit] = exit_station
  end

  def complete?
    !@route.has_value?(nil)
  end

  def fare
    return PENALTY_FARE unless complete?
    MINIMUM_FARE 
  end

  # def zone_on_entry(entry_station)
  #   @entry_zone = entry_station.zone
  # end

  # def zone_on_exit(exit_station)
  #   @exit_zone = exit_station.zone
  # end
end