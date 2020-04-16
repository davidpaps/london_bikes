# frozen_string_literal: true

require 'docking_station'

describe DockingStation do
  let(:subject) { described_class.new }
  let(:bike) { double(:bike) }

  before(:each) do
    subject.dock_bike(bike)
  end

  describe '#initialize' do
    it 'has a default capacity' do
      expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
    end

    it 'can be assigned a new default capacity' do
      docking_station = DockingStation.new(40)
      expect(docking_station.capacity).to eq(40)
    end
  end

  describe '#release_bike' do
    it 'docking station responds to the method' do
      expect(subject).to respond_to(:release_bike)
    end

    it 'releases a bike' do
      allow(bike).to receive(:working?).and_return(true)
      expect(subject.release_bike).to eq(bike)
    end

    it 'releases a working bike' do
      allow(bike).to receive(:working?).and_return(true)
      subject.release_bike
      expect(bike.working?).to eq(true)
    end

    it 'raises an error when dock is empty' do
      allow(bike).to receive(:working?).and_return(true)
      subject.release_bike
      expect { subject.release_bike }.to raise_error 'no bikes avaliable'
    end

    it 'only releases working bikes' do
      allow(bike).to receive(:working?).and_return(false)
      expect { subject.release_bike }.to raise_error 'no bikes avaliable'
    end
  end

  describe '#dock_bike' do
    it 'docking station responds to the method' do
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end

    it 'docks a bike' do
      expect(subject.dock.length).to eq(1)
    end

    it 'raises an error if dock is full' do
      (DockingStation::DEFAULT_CAPACITY - 1).times { subject.dock_bike(bike) }
      expect { subject.dock_bike(bike) }.to raise_error 'dock full'
    end
  end
end
