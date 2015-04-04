#Given
require 'rubygems'
require 'watir-webdriver'
browser = Watir::Browser.new :firefox
browser.goto 'http://www.lufthansa.com/uk/en/Homepage'
browser.driver.manage.window.maximize

#Login
browser.span(:xpath=>"//*[@id='user-btn']/a/span[2]").click
browser.text_field(:id=>"login-userdata-username").send_keys"zuma1234"
browser.text_field(:id=>"login-userdata-password").send_keys"jonathan"
browser.button(:id=>"login-layer-btn").click
browser.strong(:xpath=> "//*[@id='inner']/div[1]/header/div/table/tbody/tr/td[1]/strong").text.include? "Mrs Zuma"
puts browser.text.include? "Mrs Zuma"
browser.link(:href => "https://www.lufthansa.com/online/portal/lh/uk/booking?l=en").click
browser.link(:href=> "/online/myportal/lh/uk/booking?l=en&cid=1000243").click
browser.radio(:id=>"f-triptypeOneway").set
3
wizard = browser.radio(:id => "f-triptypeRoundtrip")
wizard.set