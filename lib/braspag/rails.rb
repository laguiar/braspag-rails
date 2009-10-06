module Braspag
  module Rails
    module FormHelper
      def braspag_form
        form_tag do
          html = hidden_field_tag 'Id_Loja', '{84BE7E7F-698A-6C74-F820-AE359C2A07C2}'
          html.concat hidden_field_tag 'crypt', 'RblletYGBHp6oH9Y/bu8Mg=='
          html.concat yield
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
