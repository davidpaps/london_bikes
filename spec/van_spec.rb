# frozen_string_literal: true

require 'van'

describe Van do
  let(:subject) { described_class.new }
  let(:bike) { double(:bike) }

  describe '#pick_up_broken' do
    it 'picks up a broken bike from a docking station' do
      subject.pick_up_broken(bike)
      expect(subject.bikes.length).to eq(1)
    end
  end

  describe '#drop_off_broken' do
    it 'drops off a bike' do
      subject.pick_up_broken(bike)
      subject.drop_off_broken
      expect(subject.bikes.length).to eq(0)
    end
  end

  describe '#pick_up_fixed' do
    it 'pickes up fxed bikes from the garage' do
      subject.pick_up_fixed
      expect(subject.bikes.length).to eq(1)
    end
  end

  describe '#drop_off_fixed' do
    it 'drops off fixed bikes' do
      subject.pick_up_fixed
      subject.drop_off_fixed
      expect(subject.bikes.length).to eq(0)
    end
  end
end
