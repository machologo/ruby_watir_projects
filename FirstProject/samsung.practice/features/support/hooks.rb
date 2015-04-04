Before do
  @browser = Watir::Browser.new :firefox
  @browser.driver.manage.window.maximize
  #puts(FigNewton.home_url)
  @browser.goto(FigNewton.home_url)
  #@browser.goto("http://www.samsung.com/uk/home")

  @home_page = HomePage.new(@browser)

end


After do
  @browser.quit
end




