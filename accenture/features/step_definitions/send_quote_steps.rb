Quando('preencher o formulario de envio') do |table|
  $send_quote.div_send_quote.click
  $send_quote.has_inpt_email?
  expect($send_quote).to have_inpt_email
  user = table.hashes.first
  $send_quote.fill_fields_send_quote(user)
end

Então('o contador de campos obrigatorios da aba Send Quote deve estar zerado') do
  expect($send_quote).to have_span_counter_send_quote
  expect($send_quote).to have_i_icon_send_quote
end

Então('ver mensagem de erro informando que ainda há algum campo obrigatorio sem preenchimento') do
  expect($send_quote).to have_txt_not_finished_yet
  expect($send_quote).to have_i_icon_alert
end