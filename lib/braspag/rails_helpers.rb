module Braspag
  module Rails
    module Helpers
      def order_form
        html = <<-EOF
          #{label_tag 'Numero do Pedido'}
          #{text_field_tag('VENDAID')}
          <br />
          #{label_tag('Valor Total')}
          #{text_field_tag('VALOR')}
          <br /><br />
        EOF
      end

      def buyer_form
        html = label_tag('Informações do Comprador')
        html << "<br />"
        html << label_tag('Comprador')
        html << text_field_tag('NOME')
        html << "<br />"
        html << label_tag('CPF')
        html << text_field_tag('CPF')
        html << "<br />"
        html << label_tag('Nome da Empresa')
        html << text_field_tag('RAZAO_PJ')
        html << "<br />"
        html << label_tag('Numero do CNPJ')
        html << text_field_tag('CNPJ')
        html << "<br />"
        html << label_tag('Logradouro (ex. Rua, Avenida, Estrada ...)')
        html << text_field_tag('LOGRADOURO')
        html << "<br />"
        html << label_tag('Endereço')
        html << text_field_tag('ENDERECO')
        html << "<br />"
        html << label_tag('Número')
        html << text_field_tag('NUMERO')
        html << "<br />"
        html << label_tag('Complemento')
        html << text_field_tag('COMPLEMENTO')
        html << "<br />"
        html << label_tag('Bairro')
        html << text_field_tag('BAIRRO')
        html << "<br />"
        html << label_tag('Cidade')
        html << text_field_tag('CIDADE')
        html << "<br />"
        html << label_tag('CEP')
        html << text_field_tag('CPF')
        html << "<br />"
        html << label_tag('Estado (UF)')
        html << text_field_tag('ESTADO')
        html << "<br />"
        html << label_tag('País')
        html << text_field_tag('PAIS')
        html << "<br />"
        html << label_tag('Data Nascimento')
        html << text_field_tag('NASC')
        html << "<br />"
        html << label_tag('Estado Civil')
        html << text_field_tag('ESTCIVIL')
        html << "<br />"
        html
      end

      def destiny_form

      end

      def payment_form
        html = label_tag('Forma de Pagamento')
        html << text_field_tag('CODPAGAMENTO')
        html
      end
    end
  end
end
