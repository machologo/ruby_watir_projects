class HomePage


  #@browser = nil

  def initialize(browser)
    @browser = browser
  end


  def visit_login
    @browser.button(:xpath => "html/body/div[2]/header/div[4]/div[2]/div[2]/button").click
    @browser.text_field(:id => "E-mail").send_keys("valid_login_username")
    @browser.text_field(:id => "pw").send_keys("valid_login_password")
    @browser.check_box(:xpath => "//*[@id='SloginForm']/fieldset/div/div[2]/div[2]/label").set
    @browser.button(:xpath => "//*[@id='SloginForm']/fieldset/div/div[2]/div[4]/a").click
  end




end