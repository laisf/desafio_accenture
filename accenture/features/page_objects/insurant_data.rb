class InsurantData < SitePrism::Page
  set_url "http://sampleapp.tricentis.com/101/app.php"

  element :inpt_first_name, '#firstname'
  element :inpt_last_name, '#lastname'
  element :inpt_birth_date, '#birthdate'
  element :lb_gender_male, '#insurance-form > div > section:nth-child(2) > div:nth-child(4) > p > label:nth-child(1)'
  element :inpt_street_address, '#streetaddress'
  element :slct_country, '#country'
  element :optn_brasil, '#country > option:nth-child(32)'
  element :inpt_zip_code, '#zipcode'
  element :slct_occupation, '#occupation'
  element :inpt_employee, '#occupation > option:nth-child(2)'
  element :inpt_bungee_jumping, '#insurance-form > div > section:nth-child(2) > div.field.idealforms-field.idealforms-field-checkbox > p > label:nth-child(2) > span'
  element :btn_next_enter_product_data, '#nextenterproductdata'
  element :txt_enter_insurant_data, '#enterinsurantdata'
  element :span_counter_insurant_data, '#enterinsurantdata > span'
  element :i_icon_insurant_data, '#insurance-form > div > section:nth-child(2) > div:nth-child(1) > i'

  def fill_fields_insurant_data(user)
    $insurant_data.has_inpt_first_name?
    $insurant_data.inpt_first_name.click
    $insurant_data.inpt_first_name.set user[:first_name]

    $insurant_data.has_inpt_last_name?
    $insurant_data.inpt_last_name.click
    $insurant_data.inpt_last_name.set user[:last_name]
    $insurant_data.has_inpt_birth_date?
    $insurant_data.inpt_birth_date.click
    $insurant_data.inpt_birth_date.set user[:birth_date]
    $insurant_data.has_lb_gender_male?
    $insurant_data.lb_gender_male.click
    $insurant_data.has_slct_country?
    $insurant_data.slct_country.click
    $insurant_data.optn_brasil.click
    $insurant_data.has_inpt_zip_code?
    $insurant_data.inpt_zip_code.click
    $insurant_data.inpt_zip_code.set user[:zip_code]
    $insurant_data.slct_occupation.click
    $insurant_data.has_slct_occupation?
    $insurant_data.inpt_employee.click
    $insurant_data.inpt_bungee_jumping.click
  end
end