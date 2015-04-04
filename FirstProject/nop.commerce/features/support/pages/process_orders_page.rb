class ProcessOrdersPage

  def initialize (browser, log)
    @browser = browser
    @log = log
  end


  def process_customers_orders
    begin
    @browser.span(:xpath => "html/body/div[2]/div/div[5]/div/form[1]/table[1]/tbody/tr[1]/td[2]/span/span/span/span").click
    @log.info('open calender clicked and opened')
    @browser.text_field(:id => "StartDate").set (FigNewton.my_start_date)
    @log.info('start date set successfully')
    #@browser.span(:xpath =>"html/body/div[2]/div/div[5]/div/form[1]/table[1]/tbody/tr[2]/td[2]/span/span/span/span").click
    @browser.text_field(:id =>"EndDate").set ('10/5/2015')
    @log.info('end date set successfully')
    @browser.text_field(:id => "CustomerEmail").send_keys(FigNewton.my_email)
    @log.info ('my email sent successfully')
    @browser.text_field(:id =>"OrderStatusId").click
    @log.info('order status clicked and opened successfully')
    @browser.text_field(:xpath => "//*[@id='OrderStatusId']/option[3]").select('Processing')
    sleep(5)
    rescue Exception => e
      @log.error

     @log.debug
      @browser.screenshot.save('reports/screenshot_reports/process_customers_orders.jpeg')
    end

  end


end