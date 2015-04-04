class AddNewCustomersPage

  def initialize (browser, log)
  @browser = browser
    @log =log





  def add_new_customers
    @browser.link(:xpath =>"html/body/div[2]/div/div[5]/div/form[1]/div/div[2]/a[1]").click
    @log.info(new customer added successfully)
    @browser.text_field(:id =>"Email").send_keys (FigNewton.my_email)
    @log.info (email address sent successfuly)
    @browser.text_field(:id =>"Password").send_keys(FigNewton.my_password)
    @log.info(correct password entered successfully)
    @browser.radio(:id => "Gender_Male").set
    @log.info(gender set successfully)
    @browser.text_field(:id =>"FirstName").send_keys(FigNewton.my_firstname)
    @log.info (first name entered successfully)
    @browser.text_field(:id =>"LastName").send_keys(FigNewton.my_surname)
    @browser.info(last name entered successfully)
    @browser.text_field(:id =>"DateOfBirth").send_keys(FigNewton.my_dob)
    @log.info (dob entered successfully)
    @browser.text_field(:id => "Company").send_keys(FigNewton.my_company)
    @log.info (company name entered successfully)
    rescue Exception => e
    @log.error
    @log.debug
    @browser.screenshot.save('reports/screenshot_reports/add_new_customers.png')




 end
end
end
