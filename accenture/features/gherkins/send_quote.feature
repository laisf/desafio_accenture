#language: pt

@motorcycle_insurance
Funcionalidade: Inserção das informacoes do veiculo
  Eu como usuário do sistema.
  Desejo realizar a cotação de seguros.
  Para que seja possivel calcular o valor do seguro.

  Contexto: Estar na página de seguros de veiculos
    * acessar a pagina Mortocycle pela home do app

  @send_quote
  Cenario: Validar preenchimento do formulario de envio com sucesso
   E preencher o formulario de informacoes do veiculo
      | make   | model      | cylinder_capacity | engine_performance | date_of_manufacture | number_of_seat | list_price | annual_mileage |
      | Susuki | Motorcycle | 250               | 290                | 01/05/2022          | 3              | 10000      | 2123           |
    E preencher o formulario de dados do segurado
      | first_name | last_name | birth_date | gender | country | zip_code | occupation | hobbies |
      | Rosa       | Maria     | 05/04/1987 | male   | Brazil  | 11025040 | employee   | Others  |
    E preencher o formulario de informações do produto
      | start_date | insurance_sum | damage_insurance | gender | country | zip_code | occupation | hobbies |
      | 01/01/2023 | Maria         | 05/04/1987       | male   | Brazil  | 11025040 | employee   | Others  |
    E selecionar uma opcao de preco
    Quando preencher o formulario de envio
      | email               | username   | password     | confirm_password |
      | rosamaria@gmail.com | Rosa_Maria | RosaMaria987 | RosaMaria987     |
    Então o contador de campos obrigatorios da aba Send Quote deve estar zerado
