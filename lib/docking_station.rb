require_relative './bike.rb'
class DockingStation
  attr_reader :bike

  def initialize 
    @bikes = []
  end

  def release_bike
    fail "No bikes available at this time" unless @bikes
    @bikes
  end

  def dock_bike(bike)
    # @bike = bike
    @bikes << bike 
  end

  # def docked?
  #   true
  # end
end