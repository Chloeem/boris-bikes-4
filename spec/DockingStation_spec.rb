require_relative "../lib/docking_station.rb"

describe DockingStation do
  
  it { is_expected.to respond_to(:release_bike) }
  
  
end

#it { expect(DockingStation.new).to respond_to(:release_bike) }
  #   describe "#release" do
  #   it "should release bikes" do 
  #       docking_station = DockingStation.new
  #       expect(docking_station).eq "Release"
   
  #   end
  # end
