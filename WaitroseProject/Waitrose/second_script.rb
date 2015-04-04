#First STEP   #Given
require 'rubygems'
require 'watir-webdriver'
browser = Watir::Browser.new :firefox
browser.goto'https://www.cwjobs.co.uk/'
browser.driver.manage.window.maximize
=begin
puts browser.title.eql?"http://www.pcworld.co.uk/gbuk/index.html"
browser.span(:xpath=>"//*[@id='account_btn']/span").click
browser.text_field(:xpath=>"//*[@id='email']").send_keys("machologo@yahoo.com")
browser.text_field(:xpath=>"//*[@id='password']").send_keys("disaster1234")
browser.button(:xpath=>".//*[@id='sign_in_bttn']").click

browser.text.include? "Hello Ifeanyi"



browser.text.include? "Account"
browser.link(:xpath=>"//*[@id='desktop-nav']/ul[1]/li[2]/a").click
browser.span(:xpath=>"//*[@id='one']/span").click
browser.image(:xpath=>"//*[@id='content']/div[3]/section[1]/div[2]/form/div[2]/div/article[1]/a/img[2]").click
browser.button(:id=>"add_to_basket").click
browser.span(:xpath=>"//*[@id='content']/div[2]/div[1]/div[1]/div[1]/section/div[1]/article/a/div/span[2]/span[1]").click
=end
browser.link(:xpath=>"//*[@id='top']/div[3]/div[1]/ul/li[3]/a").click
browser.text_field(:id=>"txtEmail").send_keys"machologo@yahoo.com"
browser.text_field(:id=>"txtPassword").send_keys"disaster1976"
browser.button(:id=>"btnLogin").click

=begin
browser.select_list(:id=>"candidateProfileDetails_ddlSalutation").select"Mr"


first_name = browser.text_field(:id=>"candidateProfileDetails_txtForename")
first_name.clear
first_name.send_keys("Cletus")


my_surname = browser.text_field(:id=>"candidateProfileDetails_txtSurname")
my_surname.clear
my_surname.send_keys"ibeto"

browser.text_field(:id=>"candidateProfileDetails_txtHomePhone").send_keys"01"

browser.text_field(:id=>"candidateProfileDetails_txtMobilePhone").send_keys"07564146251"


browser.checkbox(:xpath=>"//*[@id='candidateProfileDetails_chkSMS']").set

#Select Country
browser.select_list(:id=>"candidateProfileDetails_ddlCountryOfResidence").select"Nigeria"

#Upload
browser.file_field(:id=>"candidateProfileDetails_cvUpload_filCVUploadFile").set("C:\\Users\\Toshiba\\Desktop\\TEVA.PDF")

=end

#Select Social Media
social_media = browser.span(:xpath => "//*[@id='candidateProfileDetails_onlineProfileEntry_rptOnlineProfileEntry_ctl00_ddlOnlineProfileOptions-button']/span[1]")
puts social_media.exist?
social_media.select()




=begin
browser.link(:xpath=>"//*[@id='frmMain']/div[4]/div[2]/div[2]/div/div[2]/div/div/a").click
browser.select_list(:id=>"ddlSalutation").select"Mr"
browser.text_field(:id=>"txtForename").send_keys"ifeanyi"
browser.text_field(:id=>"txtSurname").send_keys"Nwosu"
browser.text_field(:id=>"txtEmail").send_keys"machologo@yahoo.com"
browser.text_field(:id=>"txtPassword").send_keys"disaster1976"
browser.text_field(:id=>"txtConfirmPassword").send_keys"disaster1976"
browser.checkbox(:id=>"chkRememberMe").clear
browser.checkbox(:id=>"chkRememberMe").click
browser.button(:id=>"imbUserRegistrationSubmit") .click
=end
