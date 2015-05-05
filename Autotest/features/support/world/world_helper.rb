module WorldHelper


   def start_test
     @browser = Watir::Browser.new :chrome
     @browser.driver.manage.window.maximize
   end

  def stop_test
    @browser.close
    @browser = nil
  end

  def home_page
    @home_page ||= HomePageStep.new(@browser)
  end







end

World(WorldHelper)