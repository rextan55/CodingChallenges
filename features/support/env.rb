require 'selenium-webdriver'
require 'rspec'
require 'rspec/expectations'

After do
  @browser.quit
end