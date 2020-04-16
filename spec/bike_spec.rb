# frozen_string_literal: true

require 'bike'

describe Bike do
  let(:subject) { described_class.new }

  describe '#working?' do
    it 'bike responds to the method' do
      expect(subject).to respond_to(:working?)
    end

    it ' working bikes released' do
      expect(subject.working?).to eq(true)
    end
  end
end
