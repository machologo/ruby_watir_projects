class AddNewDiscountPage


  def initialize (browser, log)
    @browser = browser
    @log = log

    def add_and_set_up_new_discount
      @browser.link(:xpath =>"html/body/div[2]/div/div[5]/div/div/div[2]/a").click
      @log.info ('new customer added successfully')
      @browser.text_field(:id => "Name").send_keys(FigNewton.my_firstname)
      @log.info ('my name sent successfully')
#     @browser.text_field(:id =>"DiscountTypeId").click
      @browser.td(:id => "DiscountTypeId").send_keys(FigNewton.discount_type)
      @browser.radio(:id => "UsePercentage").set
      @log.info ('radio button clicked successfully')
    rescue Exception => e
      @log.error
      @log.debug
      @browser.screenshot.save('reports/screenshot_reports/add_new_discount.jpeg')


  end

end
end