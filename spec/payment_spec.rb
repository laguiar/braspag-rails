require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Braspag::Payment do
  context "when created" do
    it "should instantiate a buyer with a connection for the current environment" do
      Braspag::Buyer.should_receive(:new) do |connection|
        connection.environment.should eql(Braspag::Test)
        connection.merchant_id.should eql(MERCHANT_ID)
        mock(Braspag::Buyer, :buy! => false)
      end
      Braspag::Payment.create! :a => :b
    end

    it "should buy from a buyer" do
      params = {:a => :b, :c => :d}
      Braspag::Buyer.stub!(:new).and_return(buyer = mock(Braspag::Buyer))
      buyer.should_receive(:buy!).with(params)
      Braspag::Payment.create! params
    end
  end
end
