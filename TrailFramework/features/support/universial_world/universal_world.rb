module UniversalWorld



  def start_test
    @browser = Watir::Browser.new :chrome
    @browser.driver.manage.window.maximize
  end

  def stop_test
    @browser.quit
  end


  def home_page
    @home_page ||= HomePage.new(@browser)
  end


end


World(UniversalWorld)