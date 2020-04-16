require 'van'

describe Van do

  let(:subject) { described_class.new }
  let(:bike) { double(:bike) }

  describe '#pick_up_bike' do

    it 'picks up a broken bike from a docking station' do
      allow(bike).to receive(:working?).and_return(false)
      subject.pick_up_bike(bike)
      expect(subject.trailer.length).to eq(1)
     end
  end
end