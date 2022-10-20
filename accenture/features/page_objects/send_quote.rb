class SendQuote < SitePrism::Page
  set_url "http://sampleapp.tricentis.com/101/app.php"

  element :inpt_email, '#email'
  element :inpt_phone, '#phone'
  element :inpt_username, '#username'
  element :inpt_password, '#password'
  element :inpt_confirm_password, '#confirmpassword'
  element :btn_send, '#sendemail'
  element :span_counter, '#sendquote > span'
  element :div_send_quote, '#sendquote'
  element :div_success_message, 'body > div.sweet-alert.showSweetAlert.visible > h2'
  element :icon_success_message, '.sa-placeholder'
  element :btn_confirm, '.confirm'
  element :span_counter_send_quote, '#sendquote > span'
  element :i_icon_send_quote, '#sendQuoteForm > div.field.idealforms-field.idealforms-field-email.valid > i'
  element :loader, '#LoadingPDF'
  element :txt_select_price, '#xLoaderQuote > p'
  element :txt_not_finished_yet, 'body > div.sweet-alert.showSweetAlert.visible > h2'
  element :i_icon_alert, 'body > div.sweet-alert.showSweetAlert.visible > div.sa-icon.sa-warning.pulseWarning'

  def fill_fields_send_quote(user)
    $send_quote.has_inpt_email?
    $send_quote.inpt_email.click
    $send_quote.inpt_email.set user[:email]

    $send_quote.has_inpt_username?
    $send_quote.inpt_username.click
    $send_quote.inpt_username.set user[:username]

    $send_quote.has_inpt_password?
    $send_quote.inpt_password.click
    $send_quote.inpt_password.set user[:password]

    $send_quote.has_inpt_confirm_password?
    $send_quote.inpt_confirm_password.click
    $send_quote.inpt_confirm_password.set user[:confirm_password]
  end
end