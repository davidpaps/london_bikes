# frozen_string_literal: true

require 'van'
require 'support/shared_examples_for_bike_container'

describe Van do
  let(:subject) { described_class.new }
  let(:bike) { double(:bike) }

  describe '#pick_up' do
    it 'picks up a broken bike from a docking station' do
      subject.pick_up(bike)
      expect(subject.bikes.length).to eq(1)
    end
  end

  describe '#drop_off' do
    it 'drops off a bike' do
      subject.pick_up(bike)
      subject.drop_off
      expect(subject.bikes.length).to eq(0)
    end
  end

  it_behaves_like BikeContainer
end
