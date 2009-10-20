require File.join(File.dirname(__FILE__), 'rails_helpers')

module Braspag
  module Rails
    module FormHelper
      include Braspag::Rails::Helpers

      def braspag_form
        form_tag 'https://homologacao.pagador.com.br/pagador/index.asp' do
          html = yield
          html.concat hidden_field_tag 'Id_Loja', '{84BE7E7F-698A-6C74-F820-AE359C2A07C2}'
          html.concat hidden_field_tag 'crypt', '9IoLjnw4hCcHrmy6yHrKMH5B1HN9ifF72pRXZg8Iqz7wKAsCQ63IV/wsVQgVDkwOzDcGQw7sq4nin82Ci2K2y8MdfozrT4lgY8yTUmHHf/H3ChmA7g+vHkERz+/7U1DP'
          html.concat '<p>'
          html.concat submit_tag 'Comprar'
          html.concat '</p>'
        end
      end
      def braspag_edit_form_for(route)
        form_tag route do
          template = ERB.new <<-EOF
            <%= order_form %>
            <%= buyer_form %>
            <%= destiny_form %>
            <%= payment_form %>
            <p>
            <%= submit_tag 'Prosseguir' %>
            </p>
          EOF
          template.result(binding)
        end
      end
    end
  end
end

module ActionView
  class Base
    include Braspag::Rails::FormHelper
  end
end
