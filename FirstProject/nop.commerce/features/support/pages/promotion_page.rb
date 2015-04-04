class PromotionPage

  def initialize (browser, log)
    @browser = browser
    @log = log


def promotion_and_discount
  end
@browser.span(:xpath => "//*[@id='admin-menu']/li[5]/span/span").click
@log.info ('promotion drop down clicked successfully')
@browser.link(:xpath => "//*[@id='admin-menu']/li[5]/div/ul/li[4]/a").click
@log.info ('discount clicked successfully')
  rescue  Exception => e
    @log.error
    @log.debug
    @browser.screenshot.save('reports/screenshot_reports/promotion_page.jpeg')



  end
  end