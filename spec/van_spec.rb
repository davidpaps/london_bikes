require 'van'

describe Van do

  let(:subject) { described_class.new }
  let(:bike) { double(:bike) }

  describe '#pick_up_bike' do

    it 'picks up a broken bike from a docking station' do
      subject.pick_up(bike)
      expect(subject.trailer.length).to eq(1)
     end
  end

  describe "#drop_off_bike" do
    
    it 'drops off a bike' do
      subject.pick_up(bike)
      subject.drop_off(bike)
      expect(subject.trailer.length).to eq(0)
    end
  end
end