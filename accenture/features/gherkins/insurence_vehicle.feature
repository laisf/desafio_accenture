#language: pt

@motorcycle_insurance
Funcionalidade: Inserção das informacoes do veiculo
  Eu como usuário do sistema
  Desejo realizar a cotação de seguros.
  Para que seja possivel calcular o valor do seguro.

  Contexto: Acessar a pagina Mortocycle pela home do app
    * acessar a pagina Mortocycle pela home do app

  @insurence_vehicle
  Cenario: Validar preenchimento do formulario de informacoes do veiculo com sucesso
    Quando preencher o formulario de informacoes do veiculo
      | make   | model      | cylinder_capacity | engine_performance | date_of_manufacture | number_of_seat | list_price | annual_mileage |
      | Susuki | Motorcycle | 250               | 290                | 01/05/2022          | 3              | 10000      | 2123           |
    Então o contador de campos obrigatorios da aba Enter Vehicle Data deve estar zerado
    E posso prosseguir para o formulario de dados do assegurado

  # Cenario: Validar indicação de campos não preenchidos
  #   Quando não preencher o formulário de informacoes do veiculo
  #   | make   | model      | cylinder_capacity | engene_perfomance | date_of_manufacture | number_of_seat | list_price | annual_mileage |
  #   | Susuki | Motorcycle | 250               | 290               | 01/05/2022          | 4              | 10000      | 2123           |
  #   Então ver obrigatoriedade de preenchimento de campo na aba

    # @try_
    # Esquema do Cenario: Realizar tentativa de cadastro
    #     Quando adicionar as informacoes do veiculo
      # | make   | model      | cylinder_capacity | engine_performance | date_of_manufacture | number_of_seat | list_price | annual_mileage |
      # | Susuki | Motorcycle | 250               | 290                | 01/05/2022          | 3              | 10000      | 2123           |
    #     Então ver o icone de obrigatoriedade de campo
    #     E e a cor alterada do campo
