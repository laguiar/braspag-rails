module Braspag
  class Payment
    def self.create!(params)
      merchant_id = params[:merchant_id] || YAML.load_file("#{RAILS_ROOT}/config/braspag.yml")['merchant_id']
      connection = Braspag::Connection.new merchant_id, RAILS_ENV
      Braspag::Buyer.new(connection).buy! params
    end
  end
end
