require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def partial(name)
  File.expand_path(File.dirname(__FILE__) + "/../../app/views/braspag/_#{name}.erb")
end

describe "_confirmation.erb should render a form" do

  before :all do
    @form = Tilt::ERBTemplate.new(partial("confirmation")).render {}
  end

  it "targeting https://homologacao.pagador.com.br/pagador/index.asp" do
    @form.should have_tag("form[@action='https://homologacao.pagador.com.br/pagador/index.asp']")
  end
end
