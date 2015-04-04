


Before do
  @browser = Watir::Browser.new :firefox
  @browser.driver.manage.window.maximize
  @browser.goto(FigNewton.home_url)

  @home_url = HomeUrl.new(@browser)
end


After do
  @browser.close
end


