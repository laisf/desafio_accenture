class SelectPriceOption < SitePrism::Page
  set_url "http://sampleapp.tricentis.com/101/app.php"

  element :inpt_platinun, '#priceTable > tfoot > tr > th.group > label:nth-child(3)'
  element :div_open_quote, '#quote-sub-container > div > div.col-lg-5.col-md-5.col-xs-12 > div > div.quote-cell.hb-sm-inline'
  element :div_download_quote, '#quote-sub-container > div > div.col-lg-6.col-md-6.col-xs-12 > div > div.quote-cell.hb-sm-inline'
  element :btn_next_send_quote, '#nextsendquote'
  element :div_select_price_option, '#selectpriceoption'
  element :span_counter_select_price_option, '#selectpriceoption > span'
  element :i_icon_select_price_option, '#pricePlans > div.field.idealforms-field.idealforms-field-radio.valid > i'
  element :txt_need_complete_first_steps, '#xLoaderPrice > p'
  
end