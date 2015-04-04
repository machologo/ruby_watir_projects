class LoginPage





  def initialize(browser, log)
    @browser = browser
    @log = log
  end


  def visit_home_page
    begin
      @browser.goto(FigNewton.base_url)
      #@browser.goto(" http://admin-demo.nopcommerce.com/admin/")
      @log.info("The go to browser code has executed")
    rescue
      @browser.screenshot.save('reports/screenshot_reports/visit_home_page.jpeg')
      @log.error("Error occured and screenshot taken")
    end
  end


  def logon_with_valid_data
    begin
    @browser.text_field(:id => "Email").send_keys(FigNewton.my_email)
    @log.info("Username entered successfully")
    @browser.text_field(:id => "Password").send_keys(FigNewton.my_password)
    @log.info("Password entered successfully")
    @browser.button(:xpath => "html/body/div[1]/div/div/div/div/div[2]/div[1]/div/div[2]/form/div[5]/input").click
    @log.info("Login button clicked")
    rescue Exception => e
    @browser.screenshot.save('reports/screenshot_reports/logon_with_valid_data.png')
      @log.error("Error occurred in the logon_with_valid_method_data and the screenshot has been taken" )
      @log.debug(e)
    end
  end


  def verify
    sleep(5)
    @browser.text.include?("Clear")
  end


  def logout

  end
end