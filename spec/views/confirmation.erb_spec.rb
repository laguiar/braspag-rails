require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "_confirmation.erb" do

  context "on rendering a form" do
    before :all do
      @form = form_from_partial("confirmation")
    end

    it "should include a Id_Loja field with the id of the merchant" do
      @form.should have_tag("input[@type='hidden'][@name='Id_Loja'][@value='#{merchant_id}']")
    end

    it "should include custom elements specified as a block" do
      @form.should have_tag("input[@name='custom']")
    end

    xit "should target https://homologacao.pagador.com.br/pagador/index.asp on test environment" do
      @form.should have_tag("form[@action='https://homologacao.pagador.com.br/pagador/index.asp']")
    end

    xit "should target https://homologacao.pagador.com.br/pagador/index.asp on development environment" do
      @form.should have_tag("form[@action='https://homologacao.pagador.com.br/pagador/index.asp']")
    end
  end
end
