require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require 'action_view'
require 'action_controller'

module ActionController
  class ActionControllerError < StandardError #:nodoc:
  end
end

describe Braspag::Rails::FormHelper do
  include ActionView::Helpers::FormHelper
  include ActionView::Helpers::FormTagHelper
  include ActionView::Helpers::FormOptionsHelper
  include ActionView::Helpers::UrlHelper
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::TextHelper
  include ActionView::Helpers::ActiveRecordHelper
  include ActionView::Helpers::RecordIdentificationHelper
  include ActionView::Helpers::DateHelper
  include ActionView::Helpers::CaptureHelper
  include ActionController::PolymorphicRoutes
  include ActionController::Helpers
  include ActionController::RequestForgeryProtection
  include ActiveSupport

  include Braspag::Rails::FormHelper

  def allow_forgery_protection
    false
  end

  attr_accessor :output_buffer
  before do
    @output_buffer = ''
  end

  it "should render a form with required fields" do
    braspag_edit_form_for('/payment_types') do |builder|
    end
    output_buffer.should have_tag("input#VENDAID")
    output_buffer.should have_tag("input#VALOR")
    output_buffer.should have_tag("input#NOME")
    output_buffer.should have_tag("input#CODPAGAMENTO")
  end
end
