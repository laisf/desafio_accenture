require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "http://sampleapp.tricentis.com/101/app.php"
end