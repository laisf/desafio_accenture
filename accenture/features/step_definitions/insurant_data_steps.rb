Quando('preencher o formulario de dados do segurado') do |table|
  $insurant_data.txt_enter_insurant_data.click
  $insurant_data.has_inpt_first_name?
  expect($insurant_data).to have_inpt_first_name
  user = table.hashes.first
  $insurant_data.fill_fields_insurant_data(user)
end

Então('o contador de campos obrigatorios da aba Enter Insurant Data deve estar zerado') do
  expect($insurant_data).to have_span_counter_insurant_data
  expect($insurant_data).to have_i_icon_insurant_data
end

Então('posso prosseguir para o formulario de dados do produto') do
  $insurant_data.has_btn_next_enter_product_data?
  $insurant_data.btn_next_enter_product_data.click
  $product_data.has_inpt_start_date?
  expect($product_data).to have_inpt_start_date
end
