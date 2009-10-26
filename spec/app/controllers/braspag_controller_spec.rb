require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')
require 'app/controllers/braspag_controller'

describe BraspagController do
  it "deve chamar o encryptar dados" do
    braspag_crypt = Braspag::Cryptography.stub!
    braspag_crypt.should_receive(:encrypt).with(params)
    get :braspag
  end

  it "deve renderizar form com o campo loja e os dados encriptados" do
    braspag_form do |builder|
    end
    output_buffer.should have_tag("input#Id_Loja")
    output_buffer.should have_tag("input#crypt")
  end
end
