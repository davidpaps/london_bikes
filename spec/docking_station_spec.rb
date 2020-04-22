# frozen_string_literal: true

require 'docking_station'
require 'support/shared_examples_for_bike_container'

describe DockingStation do
  let(:subject) { described_class.new }
  let(:bike) { double(:bike) }

  describe '#release_bike' do
    it 'docking station responds to the method' do
      expect(subject).to respond_to(:release_bike)
    end

    it 'releases a bike' do
      allow(bike).to receive(:working?).and_return(true)
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq(bike)
    end

    it 'releases a working bike' do
      allow(bike).to receive(:working?).and_return(true)
      subject.dock_bike(bike)
      subject.release_bike
      expect(bike.working?).to eq(true)
    end

    it 'raises an error when dock is empty' do
      expect { subject.release_bike }.to raise_error 'No bikes avaliable'
    end

    it 'only releases working bikes' do
      expect{subject.release_bike}.to raise_error 'No bikes avaliable'
    end
  end

  describe '#dock_bike' do
    it 'docking station responds to the method' do
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end

    it 'docks a bike' do
      subject.dock_bike(bike)
      expect(subject.bikes.length).to eq(1)
    end

    it 'raises an error if dock is full' do
      (DockingStation::DEFAULT_CAPACITY).times { subject.dock_bike(bike) }
      expect { subject.dock_bike(bike) }.to raise_error 'DockingStation full'
    end
  end

  it_behaves_like BikeContainer
end
