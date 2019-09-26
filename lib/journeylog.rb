class JourneyLog
  
  attr_reader :route

  def initialize
    @route = { entry: nil, exit: nil}
    @last_journey = []
  end

  def start(entry_station)
    @route[:entry] = entry_station
  end

  def finish(exit_station)
    @route[:exit] = exit_station
  end

  def save_journey
    @last_journey << @route
    # @route = nil
  end

  def show_history
    log = []
    @last_journey.each do |hash|
      # puts hash
      #   hash.each_value do |v|
      #     log << "#{v}" + " --->"
      #   end
        log << "#{hash[:entry]} ---> #{hash[:exit]}"
      end
      log
  end
end