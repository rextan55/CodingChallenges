driver_path = File.join(File.dirname(__FILE__), '..', '..', 'drivers', 'chromedriver')



Given(/^I go to "([^"]*)"$/) do |site|
  #this defines to use chrome and invokes the driver path up top
  @browser = Selenium::WebDriver.for :chrome, driver_path: driver_path
  @browser.manage.timeouts.implicit_wait = 10
  @browser.manage.timeouts.page_load = 10
  #The wait commands tell the browser to wait that long before timing out
  #This below says to open chrome and navigate there
  @browser.get("#{site}")
end

When(/^I tap on NFL$/) do
  #Finding by link text
  @browser.find_element(:link_text, 'NFL').click
end

Then(/^it should show the nfl page$/) do
  @browser.manage.timeouts.implicit_wait = 10
  @browser.manage.timeouts.page_load = 10
  #Finding by XPath
  link = @browser.find_element(:xpath, "//div[@class='global-nav-container']//ul[@class='first-group']//li[@class='sports  sub']//span[@class='positioning']//a[@name='&lpos=subnav+subnav_nfl_nfl']//span[@class='link-text']")
  puts link.text
  #This is to expect the top left banner logo to be NFL, so i know im on the NFL page
  expect(link.text).to eq('NFL')
end

Then(/^I should click the Log In button$/) do
  #xpath to the login button
  @browser.find_element(:xpath, "//div[@class='container']//ul[@class='tools']//li[@class='user']").click
  @browser.manage.timeouts.page_load = 10
  #Switching to the iframe login fields
  @browser.switch_to.frame('disneyid-iframe')
  userName = @browser.find_element(:xpath, "//input[@type='email']")
  #Checking for the username field so i can verify that the iframe popped up the correct login fields
  expect(userName.attribute('placeholder')).to eq('Username or Email Address')
end

Then(/^I should input my credentials "([^"]*)" un and "([^"]*)" pw$/) do |un, pw|
  @browser.manage.timeouts.implicit_wait = 10
  @browser.manage.timeouts.page_load = 10
  userName = @browser.find_element(:xpath, "//input[@type='email']")
  userName.send_keys("#{un}")
  passWord = @browser.find_element(:xpath, "//input[@type='password']")
  passWord.send_keys("#{pw}")
  @browser.find_element(:xpath, "//button[@class='btn btn-primary btn-submit ng-binding']").click
end

Then(/^I should successfully log in with "([^"]*)"$/) do |name|
  @browser.manage.timeouts.implicit_wait = 10
  @browser.manage.timeouts.page_load = 10
  user = @browser.find_element(:xpath, "//div[@class='container']//ul[@class='tools']")
  @browser.action.move_to(user).perform
  @browser.manage.timeouts.implicit_wait = 10
  @browser.manage.timeouts.page_load = 10
  myName = @browser.find_element(:xpath, "//li[@class='display-user']").text
  expect(myName).to include("#{name}")
end

When(/^I navigate to the dropdown page$/) do
  @browser.manage.timeouts.implicit_wait = 10
  @browser.manage.timeouts.page_load = 10
  @browser.find_element(:xpath, "//a[@href='/dropdown']").click
end

Then(/^I should be able to click the dropdown$/) do
  @dropdown = @browser.find_element(:xpath, "//select[@id='dropdown']")
end

And(/^select "([^"]*)"$/) do |option|
  @browser.manage.timeouts.implicit_wait = 10
  @browser.manage.timeouts.page_load = 10
  ddList = Selenium::WebDriver::Support::Select.new @dropdown
  ddList.select_by(:text, option)
  actual_selected = ddList.selected_options[0].text
  expect(actual_selected).to eq("Option 1")
end
