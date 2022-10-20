Quando('preencher o formulario de informações do produto') do |table|
  $product_data.div_enter_product_data.click
  $product_data.has_inpt_start_date?
  expect($product_data).to have_inpt_start_date
  user = table.hashes.first
  $product_data.fill_fields_product_data(user)
end

Então('o contador de campos obrigatorios da aba Enter Product Data deve estar zerado') do
  expect($product_data).to have_span_counter_product_data
  expect($product_data).to have_i_icon_product_data
end

Então('posso prosseguir para o formulario de opcoes de preco') do
  $product_data.has_btn_next_select_price_option?
  $product_data.btn_next_select_price_option.click
  expect($select_price_option).to have_inpt_platinun
end
