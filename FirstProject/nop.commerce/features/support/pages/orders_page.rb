class OrdersPage

  def initialize(browser, log)
    @browser = browser
    @log = log
  end




  def select_sales
    begin
    @browser.span(:xpath => "//*[@id='admin-menu']/li[3]/span/span").click
    @log.info("Sales Drop down clicked and opened successfully")
    rescue Exception => e
    @log.error("Sale Drop down not clicked and not opened as desired")
    @log.error(e)
    @browser.screenshot.save('reports/screenshot_reports/select_sales.png')
    end
  end


 def process_customers
   begin
   @browser.a(:xpath=> "//*[@id='admin-menu']/li[3]/div/ul/li[1]/a").click
   sleep (10)
   @log.info(" Orders for customers clicked and opened successfully")
   rescue Exception => e
   @log.error ("Orders for customers not clicked and opened successfully")
   @log.error(e)
   @browser.screenshot.save('reports/screenshot_reports/process_customers.png')


end
end

end