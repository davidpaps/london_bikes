require 'bike'

describe Bike do

  let(:subject){described_class.new}

  describe "#working?" do
    
    it "bike responds to the method" do
      expect(subject).to respond_to :working?
    end
  end
  
end