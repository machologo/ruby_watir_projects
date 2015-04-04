module AccessoriesWorld

  @browser = nil
  @browser



  def initialize(browser, log)
    @browser = browser
    @log = log
  end

  def instantiate_browser
    @browser ||= Watir::Browser.new :chrome
    @browser.driver.manage.window.maximize
    location ||= File.open("reports/logger_reports/my_automation_logs.log", "a")
    @log = Logger.new(location)
  end

  def closing_browsers
    @browser.quit
    @browser = nil
  end



  def orders_page
    @orders_page ||= OrdersPage.new(@browser, @log)
  end


  def login_page
   @login_page ||= LoginPage.new(@browser, @log)
  end

  def process_orders_page
    @process_orders_page ||= ProcessOrdersPage.new(@browser, @log)
  end

  def click_customers_drop_down_list_page
    @click_customers_drop_down_list_page ||= ClickCustomersDropDownListPage.new(@browser, @log)
  end


  def add_new_customers_page
    @add_new_customers_page ||= AddNewCustomersPage.new(@browser, @log)
  end

  def promotion_page
  @promotion_page||= PromotionPage.new(@browser, @log)
  end


  def add_new_discount_page
  @add_new_discount_page||= AddNewDiscountPage.new(@browser, @log)

  end
end




