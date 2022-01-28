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
    # @bike = bike
    @bikes << bike
    bike
  end

  # def docked?
  #   true
  # end
end