#language: pt

@motorcycle_insurance
Funcionalidade: Inserção das informacoes do veiculo
  Eu como usuário do sistema.
  Desejo realizar a cotação de seguros.
  Para que seja possivel calcular o valor do seguro.

  Contexto: Estar na página de seguros de veiculos
    * acessar a pagina Mortocycle pela home do app

  @insurant_data
  Cenario: Validar preenchimento do formulário de informacoes do veiculo com sucesso
    Quando preencher o formulario de dados do segurado
      | first_name | last_name | birth_date | gender | country | zip_code | occupation | hobbies |
      | Rosa       | Maria     | 05/04/1987 | male   | Brazil  | 11025040 | employee   | Others  |
    Então o contador de campos obrigatorios da aba Enter Insurant Data deve estar zerado
    E posso prosseguir para o formulario de dados do produto
