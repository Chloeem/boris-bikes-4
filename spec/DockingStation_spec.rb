require_relative "../lib/docking_station.rb"

describe DockingStation do
  describe '#release_bike' do
    # it { is_expected.to respond_to(:release_bike) }

    it 'releases a bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end

    it "Raises an error when no bikes available" do
      subject.release_bike
      expect { subject.release_bike }.to raise_error("No bikes available at this time")
    end

  end

  describe "#dock_bike" do
    it { is_expected.to respond_to(:dock_bike).with(1).argument }

    it "It docks the bike" do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to be_truthy
    end

    it "Raises an error when the station is at capacity" do
      subject.dock_bike("bike1")
      expect { subject.dock_bike("bike2") }.to raise_error("The docking station is at full capacity")
    end
  end

end


