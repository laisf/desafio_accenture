Quando('selecionar uma opcao de preco') do
  $select_price_option.div_select_price_option.click
  $select_price_option.has_inpt_platinun?
  $select_price_option.inpt_platinun.click
end

Então('ver os arquivos gerados em pdf na tela') do
  expect($select_price_option).to have_div_open_quote
  expect($select_price_option).to have_div_download_quote
end

Então('posso prosseguir para ver o formulario de envio') do
  $select_price_option.has_btn_next_send_quote?
  $select_price_option.btn_next_send_quote.click
  $send_quote.has_inpt_email?
  expect($send_quote).to have_inpt_email
end



