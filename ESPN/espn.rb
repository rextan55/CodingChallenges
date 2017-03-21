require 'selenium-webdriver'
require 'rspec'

Selenium::WebDriver::Chrome.driver_path='/Users/riotmbp/Downloads/chromedriver'

driver = Selenium::WebDriver.for :chrome



describe 'espn' do
  it 'should open espn website' do
    #it should open chrome and go to amazon
    driver.navigate.to('http://www.amazon.com')

    driver.find_element(:id, 'twotabsearchtextbox')
  end

end

