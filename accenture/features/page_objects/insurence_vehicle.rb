class VehicleData < SitePrism::Page
  set_url "http://sampleapp.tricentis.com/101/app.php"

  element :btn_nav_motorcycle, '#nav_motorcycle'
  element :span_motorcycle, '#selectedinsurance'
  element :slct_make, '#make'
  element :slct_model, '#model'
  element :inpt_cylinder_capacity, '#cylindercapacity'
  element :inpt_engine_performance, '#engineperformance'
  element :inpt_date_of_manufacture, '#dateofmanufacture'
  element :slct_number_of_seats_motorcycle, '#numberofseatsmotorcycle'
  element :inpt_list_price, '#listprice'
  element :inpt_annual_mileage, '#annualmileage'
  element :btn_next_enter_insurant_data, '#nextenterinsurantdata'
  element :inpt_engine_performance, '#engineperformance'
  element :div_enter_vehicle_data, '#entervehicledata'
  element :optn_susuki, '#make > option:nth-child(13)'
  element :optn_motorcycle, '#model > option:nth-child(5)'
  element :optn_seat, '#numberofseatsmotorcycle > option:nth-child(3)'
  element :span_counter, '#entervehicledata > span'
  element :i_icon, '#insurance-form > div > section:nth-child(1) > div:nth-child(1) > i'

  def fill_fields_vehicule_data(user)
    $insurence_vehicle.has_slct_make?
    $insurence_vehicle.slct_make.click
    $insurence_vehicle.optn_susuki.click
    $insurence_vehicle.has_slct_model?
    $insurence_vehicle.slct_model.click
    $insurence_vehicle.optn_motorcycle.click
    $insurence_vehicle.has_inpt_cylinder_capacity?
    $insurence_vehicle.inpt_cylinder_capacity.set user[:cylinder_capacity]
    $insurence_vehicle.has_inpt_engine_performance?
    $insurence_vehicle.inpt_engine_performance.click
    $insurence_vehicle.inpt_engine_performance.set user[:engine_performance]
    $insurence_vehicle.has_inpt_date_of_manufacture?
    $insurence_vehicle.inpt_date_of_manufacture.click
    $insurence_vehicle.inpt_date_of_manufacture.set user[:date_of_manufacture]
    $insurence_vehicle.has_slct_number_of_seats_motorcycle?
    $insurence_vehicle.slct_number_of_seats_motorcycle.click
    $insurence_vehicle.optn_seat.click
    $insurence_vehicle.has_inpt_list_price?
    $insurence_vehicle.inpt_list_price.click
    $insurence_vehicle.inpt_list_price.set user[:list_price]
    $insurence_vehicle.has_inpt_annual_mileage?
    $insurence_vehicle.inpt_annual_mileage.click
    $insurence_vehicle.inpt_annual_mileage.set user[:annual_mileage]
  end
end