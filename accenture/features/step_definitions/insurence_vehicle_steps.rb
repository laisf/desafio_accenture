Dado('acessar a pagina Mortocycle pela home do app') do
  $insurence_vehicle.load
  $insurence_vehicle.btn_nav_motorcycle.click
end

Quando('preencher o formulario de informacoes do veiculo') do |table|
  $insurence_vehicle.has_div_enter_vehicle_data?
  expect($insurence_vehicle).to have_div_enter_vehicle_data
  user = table.hashes.first
  $insurence_vehicle.fill_fields_vehicule_data(user)
end

Então('o contador de campos obrigatorios da aba Enter Vehicle Data deve estar zerado') do
  expect($insurence_vehicle).to have_span_counter
  expect($insurence_vehicle).to have_i_icon
end

Então('posso prosseguir para o formulario de dados do assegurado') do
  $insurence_vehicle.has_btn_next_enter_insurant_data?
  $insurence_vehicle.btn_next_enter_insurant_data.click
  $insurant_data.has_inpt_first_name?
  expect($insurant_data).to have_inpt_first_name
  expect($insurant_data).to have_inpt_last_name
end

