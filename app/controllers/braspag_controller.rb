class BraspagController < ApplicationController
  def encrypt
    merchant_id = YAML.load_file("#{RAILS_ROOT}/config/braspag.yml")['merchant_id']
    @braspag = Braspag::Connection.new merchant_id, RAILS_ENV

    form_fields = {}
    params.each do |key, value|
      form_fields[key] = value unless ["action", "controller"].include? key
    end
    @crypt = Braspag::Cryptography.new(@braspag).encrypt form_fields
  end

  def buy
    merchant_id = YAML.load_file("#{RAILS_ROOT}/config/braspag.yml")['merchant_id']
    @braspag = Braspag::Connection.new merchant_id, RAILS_ENV
    fields = {:orderId => "teste564", :customerName => "comprador de teste", :amount => "1,00", :paymentMethod => "18", :holder => "comprador de teste", :cardNumber => "345678901234564", :expiration => "06/11", :securityCode => "1234", :numberPayments => "1", :typePayment => "0"}
    @result = Braspag::Pagador.new(@braspag).authorize fields
    puts @result
  end
end
