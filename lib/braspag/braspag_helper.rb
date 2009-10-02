module Braspag
  class BraspagHelper << ActionView::Helpers::FormHelper
    def braspag_form_for
      form_for(Object) do
        text_field_tag 'Id_Loja', '{84BE7E7F-698A-6C74-F820-AE359C2A07C2}'
        text_field_tag 'crypt', 'RblletYGBHp6oH9Y/bu8Mg=='
        yield
      end
    end
  end
end
