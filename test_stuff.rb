require 'selenium-webdriver'
require 'rspec'
require 'rspec/expectations'

driver_path = File.join(File.dirname(__FILE__), 'drivers', 'chromedriver')




@browser = Selenium::WebDriver.for :chrome, driver_path: driver_path

@browser.get('http://the-internet.herokuapp.com')

welcome = @browser.find_element(:xpath, "//div[@id='content']//h1[@class='heading']").text


@browser.quit