class BraspagController < ApplicationController
  def encrypt
    merchant_id = YAML.load_file("#{RAILS_ROOT}/config/braspag.yml")['merchant_id']
    @braspag = Braspag::Connection.new merchant_id, RAILS_ENV
    puts params
    @crypt = Braspag::Cryptography.new(@braspag).encrypt params
  end
end
