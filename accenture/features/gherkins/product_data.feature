#language: pt

@motorcycle_insurance
Funcionalidade: Inserção das informacoes do veiculo
  Eu como usuário do sistema.
  Desejo realizar a cotação de seguros.
  Para que seja possivel calcular o valor do seguro.

  Contexto: Estar na página de seguros
    * acessar a pagina Mortocycle pela home do app

  @product_data
  Cenario: Validar preenchimento do formulario de informações do produto
    E preencher o formulario de informacoes do veiculo
      | make   | model      | cylinder_capacity | engine_performance | date_of_manufacture | number_of_seat | list_price | annual_mileage |
      | Susuki | Motorcycle | 250               | 290                | 01/05/2022          | 3              | 10000      | 2123           |
    E preencher o formulario de dados do segurado
      | first_name | last_name | birth_date | gender | country | zip_code | occupation | hobbies |
      | Rosa       | Maria     | 05/04/1987 | male   | Brazil  | 11025040 | employee   | Others  |
    Quando preencher o formulario de informações do produto
      | start_date | insurance_sum | damage_insurance | gender | country | zip_code | occupation | hobbies |
      | 01/01/2023 | Maria         | 05/04/1987       | male   | Brazil  | 11025040 | employee   | Others  |
    Então o contador de campos obrigatorios da aba Enter Product Data deve estar zerado
    E posso prosseguir para o formulario de opcoes de preco
