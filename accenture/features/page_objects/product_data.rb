class ProductData < SitePrism::Page
  set_url "http://sampleapp.tricentis.com/101/app.php"

  element :div_enter_product_data, '#enterproductdata'
  element :inpt_start_date, '#startdate'
  element :slct_insurance_sum, '#insurancesum'
  element :optn_sete, '#insurancesum > option:nth-child(4)'
  element :slct_damage_insurance, '#damageinsurance'
  element :optn_full_coverage, '#damageinsurance > option:nth-child(4)'
  element :inpt_euro_protection, '#insurance-form > div > section:nth-child(3) > div.field.idealforms-field.idealforms-field-checkbox > p > label:nth-child(1)'
  element :inpt_date_of_manufacture, '#dateofmanufacture'
  element :btn_next_select_price_option, '#nextselectpriceoption'
  element :span_counter_product_data, '#enterproductdata > span'
  element :i_icon_product_data, '#insurance-form > div > section:nth-child(3) > div.field.idealforms-field.idealforms-field-text.valid > i'

  def fill_fields_product_data(user)
    $product_data.has_inpt_start_date?
    $product_data.inpt_start_date.set user[:start_date]
    $product_data.has_slct_insurance_sum?
    $product_data.slct_insurance_sum.click
    $product_data.optn_sete.click
    $product_data.has_slct_damage_insurance?
    $product_data.slct_damage_insurance.click
    $product_data.optn_full_coverage.click
    $product_data.inpt_euro_protection.click
  end
end