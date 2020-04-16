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

  describe '#report_broken' do
    it "flags a broken bike" do
      subject.report_broken
      expect(subject.broken).to eq(true)
      expect(subject.working?).to eq(false)
    end
  end
end
