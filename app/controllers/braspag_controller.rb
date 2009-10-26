class BraspagController < ApplicationController
  def encrypt
    c = Braspag::Connection.new "{84BE7E7F-698A-6C74-F820-AE359C2A07C2}", RAILS_ENV
    cr = Braspag::Cryptography.new c
    cr.encrypt params
  end
end
