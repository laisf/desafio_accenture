#language: pt

@motorcycle_insurance
@motorcycle_insurance_workflow
Funcionalidade: Cadastro
  Eu como usuário do sistema.
  Desejo consultar o valor do seguro do meu veiculo
  Para que seja possivel armazenar e gerenciar seus dados

  Contexto: Estar na página de seguros
    * acessar a pagina Mortocycle pela home do app

  @success_flow
  Cenário: Validar fluxo de solicitação de seguro com sucesso
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
    E clicar em send para enviar a cotação
    Então ver a mensagem de envio com sucesso

  @complete_three_steps
  Cenário: Validar necessidade de preenchimento correto dos 3 formularios para carregamento do preco
   E preencher o formulario de informacoes do veiculo
      | make   | model      | cylinder_capacity | engine_performance | date_of_manufacture | number_of_seat | list_price | annual_mileage |
      | Susuki | Motorcycle | 250               | 290                | 01/05/2022          | 3              | 10000      | 2123           |
    E preencher o formulario de dados do segurado
      | first_name | last_name | birth_date | gender | country | zip_code | occupation | hobbies |
      | Rosa       |           | 05/04/1987 | male   | Brazil  | 11025040 | employee   | Others  |
    E preencher o formulario de informações do produto
      | start_date | insurance_sum | damage_insurance | gender | country | zip_code | occupation | hobbies |
      | 01/01/2023 | Maria         | 05/04/1987       | male   | Brazil  | 11025040 | employee   | Others  |
    Quando tentar selecionar uma opcao de preco
    Então ver mensagem de erro

  @need_three_forms
  Cenário: Validar necessidade de preenchimento total dos 3 formularios para carregamento do preco
    E preencher o formulario de dados do segurado
      | first_name | last_name | birth_date | gender | country | zip_code | occupation | hobbies |
      | Rosa       | Maria     | 05/04/1987 | male   | Brazil  | 11025040 | employee   | Others  |
    E preencher o formulario de informações do produto
      | start_date | insurance_sum | damage_insurance | gender | country | zip_code | occupation | hobbies |
      | 01/01/2023 | Maria         | 05/04/1987       | male   | Brazil  | 11025040 | employee   | Others  |
     Então ver mensagem informando a necessidade de escolher preencher o tres primeiros formularios

  @try_send_without_price
  Cenário: Validar mensagem de necessidade de selecao de preco para envar a submissão do seguro
   E preencher o formulario de informacoes do veiculo
      | make   | model      | cylinder_capacity | engine_performance | date_of_manufacture | number_of_seat | list_price | annual_mileage |
      | Susuki | Motorcycle | 250               | 290                | 01/05/2022          | 3              | 10000      | 2123           |
    E preencher o formulario de dados do segurado
      | first_name | last_name | birth_date | gender | country | zip_code | occupation | hobbies |
      | Rosa       | Maria     | 05/04/1987 | male   | Brazil  | 11025040 | employee   | Others  |
    E preencher o formulario de informações do produto
      | start_date | insurance_sum | damage_insurance | gender | country | zip_code | occupation | hobbies |
      | 01/01/2023 | Maria         | 05/04/1987       | male   | Brazil  | 11025040 | employee   | Others  |
    Quando tentar avançar sem selecionar uma opcao de preco
    Então ver mensagem informando a necessidade de escolher uma opcao de preco

  @some_data_missing
  Cenário: Validar retorno de mensagem de erro informando que ainda há algum campo obrigatorio sem preenchimento
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
      | email               | username | password     | confirm_password |
      | rosamaria@gmail.com |          | RosaMaria987 | RosaMaria987     |
    E clicar em send para enviar a cotação
    Então ver mensagem de erro informando que ainda há algum campo obrigatorio sem preenchimento

