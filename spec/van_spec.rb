require 'van'

describe Van do

  let(:subject) { described_class.new }
  let(:bike) { double(:bike) }

  describe '#pick_up_broken' do

    it 'picks up a broken bike from a docking station' do
      subject.pick_up_broken(bike)
      expect(subject.trailer.length).to eq(1)
     end
  end

  describe '#drop_off_broken' do
    
    it 'drops off a bike' do
      subject.pick_up_broken(bike)
      subject.drop_off_broken
      expect(subject.trailer.length).to eq(0)
    end
  end
end