require 'selenium-webdriver'
require 'cucumber'

Selenium::WebDriver::Chrome.driver_path="/Users/riotmbp/Downloads/chromedriver"

driver = Selenium::WebDriver.for :chrome

Given(/^I go to espn$/) do
driver.get('http://www.espn.com')
end

When(/^I tap on Login$/) do
  driver.get('http://www.espn.com')
driver.find_element("Log In")
end