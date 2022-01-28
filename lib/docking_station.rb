require_relative './bike.rb'
class DockingStation
  attr_reader :bike

  def initialize 
    @bikes = []
  end

  def release_bike
    fail "No bikes available at this time" unless @bikes.length > 0
    @bikes.last
  end

  def dock_bike(bike)
    fail "The docking station is at full capacity" unless @bikes.length < 1
    @bikes << bike
    bike
  end
end