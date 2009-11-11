require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Braspag::Payment do
  before :each do
    RAILS_ENV = "test5"
    Braspag::Connection.stub!(:new).with()
  end

  context "responding to create" do

  end
end
