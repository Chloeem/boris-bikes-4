require_relative "../lib/docking_station.rb"

describe DockingStation do
  describe '#release_bike' do
    it { is_expected.to respond_to(:release_bike) }
  end

  describe "#dock_bike" do
    it { is_expected.to respond_to(:dock_bike).with(1).argument }
    it "It adds the bike" do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bike).to eq bike
    end
  end

end



#it { expect(DockingStation.new).to respond_to(:release_bike) }
  #   describe "#release" do
  #   it "should release bikes" do 
  #       docking_station = DockingStation.new
  #       expect(docking_station).eq "Release"
   
  #   end
  # end
