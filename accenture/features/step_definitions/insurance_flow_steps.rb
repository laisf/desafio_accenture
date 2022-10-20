Quando('clicar em send para enviar a cotação') do
  $send_quote.has_btn_send?
  $send_quote.btn_send.click
 end

Entao('ver a mensagem de envio com sucesso') do
  $send_quote.has_loader?
  sleep(10)
  expect($send_quote).to have_div_success_message
  expect($send_quote).to have_icon_success_message
end

Quando('tentar selecionar uma opcao de preco') do
  $select_price_option.has_div_select_price_option?
  $select_price_option.div_select_price_option.click
end

Então('ver mensagem de erro') do
  expect($select_price_option).to have_txt_need_complete_first_steps
end

Quando('tentar avançar sem selecionar uma opcao de preco') do
  binding.pry
  $product_data.has_btn_next_select_price_option?
  $product_data.btn_next_select_price_option.click
  binding.pry
end

Entao('nao ver o botao para avancar') do
  $select_price_option.has_no_btn_next_send_quote?
  expect($send_quote).not_to have_btn_next_send_quote
end