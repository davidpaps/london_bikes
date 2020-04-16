require 'docking_station'

describe DockingStation do

  let(:subject) {described_class.new}
  
  describe "#release_bike" do
    
    it "docking station responds to the method" do
      expect(subject).to respond_to :release_bike
    end
  end

end