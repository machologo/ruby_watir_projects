#First STEP   #Given
require 'rubygems'
require 'watir-webdriver'
browser = Watir::Browser.new :firefox
browser.goto 'http://www.waitrose.com'
browser.driver.manage.window.maximize

puts browser.title.eql? "Waitrose - Online Grocery Shopping | Free Delivery | Recipes | Wine | Party Food"
#Second Step   #Valid Credentials #When
browser.text_field(:xpath => "//*[@id='logonId']").send_keys("234dotus@gmail.com")
browser.text_field(:xpath => "//*[@id='logonPassword']").send_keys("password123")


#Third Step # Sign On #And
browser.button(:xpath => "//*[@id='loginformDisplay']/fieldset/input[3]").click

# Fourth   Step #CLICK ON THE FROZEN
browser.link(:xpath => "//*[@id='list-10057']").click
=begin
# Fifth Select the Haddack
browser.link(:xpath => "//*[@id='grid-product-id-255862']/div[2]/div/div[3]/a").click
browser.button(:xpath => "//*[@id='delivery']").click
browser.text_field(:xpath => "//*[@id='postcode_lookup_input']").send_keys("SR5 1AB")
browser.button(:xpath => "//*[@id='postcode-lookup']/fieldset/div[3]/input").click
browser.link(:xpath => "//*[@id='deliver-to-new-address']/a").click
browser.text_field(:xpath => "//*[@id='edit_postcode_existing_address']").send_keys("SR5 1AB")
browser.button(:xpath => "//*[@id='account-signed-in']/div/form/fieldset/div[2]/input").click
sleep 5
#browser.text.exist? "Yes - we deliver to SR5 1AB."
puts browser.text.include? "Yes - we deliver to SR5 1AB."
browser.text == "Yes - we deliver to SR5 1AB."



#Fifth #Logout
browser.link(:xpath => "//*[@id='my-account-drop-down']/a").click
browser.link(:xpath => "//*[@id='my-account-drop-down']/div/div/a").click

browser.close
=end