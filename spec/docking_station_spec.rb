# frozen_string_literal: true

require 'docking_station'

describe DockingStation do
  let(:subject) { described_class.new(bike) }
  let(:bike) { double(:bike) }

  describe '#release_bike' do
    it 'docking station responds to the method' do
      expect(subject).to respond_to(:release_bike)
    end

    it 'releases a bike' do
      expect(subject.release_bike).to eq(bike)
    end

    it 'releases a working bike' do
      bike = double('bike', { working?: 'true' })
      subject.release_bike
      expect(bike.working?).to eq('true')
    end
  end

  describe '#dock_bike' do
    it 'docking station responds to the method' do
      expect(subject).to respond_to(:dock_bike)
    end

    it 'docks a bike' do
      subject.dock_bike(bike)
      expect(subject.dock.length).to eq(1)
    end
  end
end
