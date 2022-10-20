#language: pt

@motorcycle_insurance
Funcionalidade: Inserção das informacoes do veiculo
  Eu como usuário do sistema.
  Desejo realizar a cotação de seguros.
  Para que seja possivel calcular o valor do seguro.

  Contexto: Estar na página de seguros de veiculos
    * acessar a pagina Mortocycle pela home do app

  @price_option
  Cenario: Validar preenchimento do formulário de informacoes de preco com sucesso
    E preencher o formulario de informacoes do veiculo
      | make   | model      | cylinder_capacity | engine_performance | date_of_manufacture | number_of_seat | list_price | annual_mileage |
      | Susuki | Motorcycle | 250               | 290                | 01/05/2022          | 3              | 10000      | 2123           |
    E preencher o formulario de dados do segurado
      | first_name | last_name | birth_date | gender | country | zip_code | occupation | hobbies |
      | Rosa       | Maria     | 05/04/1987 | male   | Brazil  | 11025040 | employee   | Others  |
    E preencher o formulario de informações do produto
      | start_date | insurance_sum | damage_insurance | gender | country | zip_code | occupation | hobbies |
      | 01/01/2023 | Maria         | 05/04/1987       | male   | Brazil  | 11025040 | employee   | Others  |
    Quando selecionar uma opcao de preco
    Então ver os arquivos gerados em pdf na tela
    E posso prosseguir para ver o formulario de envio