require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Braspag::Rails::FormHelper do
  include ActionView::Helpers::FormHelper
  include ActionView::Helpers::FormTagHelper
  include ActionView::Helpers::UrlHelper
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::CaptureHelper
  include ActionController::PolymorphicRoutes

 # include ActionView::Helpers::FormOptionsHelper
  #include ActionView::Helpers::TextHelper
  #include ActionView::Helpers::ActiveRecordHelper
  #include ActionView::Helpers::RecordIdentificationHelper
#  include ActionView::Helpers::DateHelper
  include ActiveSupport


  include Braspag::Rails::FormHelper

  attr_accessor :output_buffer
  before do
    @output_buffer = ''
  end

  it "should render a form to order" do
    braspag_edit_form_for('/payment_types') do |builder|
    end
    output_buffer.should have_tag("input#nome")
  end

  it "should render a form to buyer" do

  end

  it "should render a form to delivery information" do

  end
end
