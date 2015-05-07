class HomePage


  def initialize (browser, log)
    @browser = browser
    @log = log
  end

  def visit_home_page(home_url)
    @browser.goto(home_url)
    @log.info('home_url visited successfully')
    rescue Exception => e
    @log.error("The website was not visited")
    @browser.screenshot.save('Openclinica_reports/screen_shots_reports/home_page.png')
  end


  def search_item (search_criteria)
     @browser.text_field(:id =>"edit-search-theme-form-1").send_keys(search_criteria)
     @log.info('item searched successfully')
     rescue Exception => e
      @log.debug("Search item was not executed")
      @browser.screenshot.save('Openclinica_reports/screen_shots_reports/search_item.png')
  end


  def present_displayed (search_result)
  @browser.text.include?(search_result)
     @log.info ('present_displayed successfully')
     rescue Exception => e
     @log.error(e)
     @browser.screenshot.save('Openclinica_reports/screen_shots_reports/present_displayed.png')
  end

end