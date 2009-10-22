require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def braspag_path
  "/braspag/encrypt"
end

describe "_form.erb" do

  context "on rendering a form" do
    before :all do
      @form = Tilt::ERBTemplate.new(partial("form")).render {}
    end

    it "should target braspag_path" do
      @form.should have_tag("form[@action='#{braspag_path}']")
    end
  end
end
