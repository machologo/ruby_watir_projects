module AccessoriesWorld

  #@browser = nil


  def initialize(browser, log)
    @browser = browser
    @log = log
  end


def start_browser
  @browser = Selenium::WebDriver.for :chrome
  @browser.manage.timeouts.implicit_wait = 15
  @browser.manage.window.maximize
  file = File.open("reports/log_report/execution_logs.log", "a")
  @log ||= Logger.new(file)
  @log.info("")

  #def instantiate_browser
      #@browser ||= Watir::Browser.new :chrome
      #@browser.driver.manage.window.maximize
      #location ||= File.open("reports/logger_reports/my_automation_logs.log", "a")
      #@log = Logger.new(location)


end
end
