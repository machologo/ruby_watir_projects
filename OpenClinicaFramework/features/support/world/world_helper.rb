module WorldHelper


  def start_test
    @browser = Watir::Browser.new :chrome
    @browser.driver.manage.window.maximize
    location ||= File.open("Openclinica_reports/logger_reports/my_automation_logger.log", "a")
    @log = Logger.new(location)
  end


  def stop_test
    @browser.close
    @browser = nil
  end


  def home_page
    @home_page ||= HomePage.new(@browser, @log)
  end


  def about_page
  @about_page ||= AboutPage.new(@browser, @log)
end

 end

World(WorldHelper)