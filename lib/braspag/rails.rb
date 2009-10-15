require 'action_view'

module Braspag
  module Rails
    module FormHelper
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
            <%= label_tag 'Numero do Pedido' %>
            <%= text_field_tag 'VENDAID' %>
            <br />
            <%= label_tag 'Valor Total' %>
            <%= text_field_tag 'VALOR' %>
            <br /><br />

            <%= label_tag 'Informações do Comprador' %>
            <br />
            <%= label_tag 'Comprador' %>
            <%= text_field_tag 'NOME' %>
            <br />
            <%= label_tag 'CPF' %>
            <%= text_field_tag 'CPF' %>
            <br />
            <%= label_tag 'Nome da Empresa' %>
            <%= text_field_tag 'RAZAO_PJ' %>
            <br />
            <%= label_tag 'Numero do CNPJ' %>
            <%= text_field_tag 'CNPJ' %>
            <br />
            <%= label_tag 'Logradouro (ex. Rua, Avenida, Estrada ...)' %>
            <%= text_field_tag 'LOGRADOURO' %>
            <br />
            <%= label_tag 'Endereço' %>
            <%= text_field_tag 'ENDERECO' %>
            <br />
            <%= label_tag 'Número' %>
            <%= text_field_tag 'NUMERO' %>
            <br />
            <%= label_tag 'Complemento' %>
            <%= text_field_tag 'COMPLEMENTO' %>
            <br />
            <%= label_tag 'Bairro' %>
            <%= text_field_tag 'BAIRRO' %>
            <br />
            <%= label_tag 'Cidade' %>
            <%= text_field_tag 'CIDADE' %>
            <br />
            <%= label_tag 'CEP' %>
            <%= text_field_tag 'CPF' %>
            <br />
            <%= label_tag 'Estado (UF)' %>
            <%= text_field_tag 'ESTADO' %>
            <br />
            <%= label_tag 'País' %>
            <%= text_field_tag 'PAIS' %>
            <br />
            <%= label_tag 'Data Nascimento' %>
            <%= text_field_tag 'NASC' %>
            <br />

            <%= label_tag 'Estado Civil' %>
            <%= text_field_tag 'ESTCIVIL' %>
            <br />


            <%= label_tag 'Forma de Pagamento' %>
            <%= text_field_tag 'CODPAGAMENTO' %>
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
