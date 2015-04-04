class ClickCustomersDropDownListPage


  def initialize (browser, log)
    @browser = browser
    @log =log




    def click_customers_drop_down_list
      @browser.span(:xpath => "//*[@id='admin-menu']/li[4]/span/span").click
      @log.info ('customers drop downlist clicked successfully')
      @browser.link(:xpath =>"//*[@id='admin-menu']/li[4]/div/ul/li[1]/a").click
      @log.info ('customers selected successfully')
      rescue Exception => e
      @log.error
      @log.debug
      @browser.screenshot.save('reports/screenshot_reports/click_customers_drop_down_list.jpeg')




    end
  end
  end