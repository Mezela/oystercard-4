class JourneyLog
  
  attr_reader :route

  def initialize
    @route = { entry: nil, exit: nil}
  end

  def start(entry_station)
    @route[:entry] = entry_station
  end

  def finish(exit_station)
    @route[:exit] = exit_station
  end
end