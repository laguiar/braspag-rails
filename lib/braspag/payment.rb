module Braspag
  class Payment
    def self.create(fields)
      merchant_id = YAML.load_file("#{RAILS_ROOT}/config/braspag.yml")['merchant_id']
      @braspag = Braspag::Connection.new merchant_id, RAILS_ENV
      @result = Braspag::Pagador.new(@braspag).authorize fields
    end
  end
end
