class AboutPage

    def initialize (browser, log)
      @browser = browser
      @log = log
    end


    def visit_home_page(home_url)
      @browser.goto(home_url)
      @log.info('home_url visited successfully')
    rescue Exception => e
      @log.error("The website was not visited")
      @browser.screenshot.save('Openclinica_reports/screen_shots_reports/demo_page.png')

    end


    def go_to_about_page
      @browser.link(:xpath => "//*[@id='header']/center/div/ul/li[1]/a").click
      @log.info('about page clicked successfully')
    rescue Exception => e
      @log.error("About page was not clicked")
      @browser.screenshot.save('Openclinica_reports/screen_shots_reports/about_page.png')
    end


    def demo_page(result)
      @browser.text.include?(result)
      @log.info('Text included demo page')
    rescue Exception => e
      @log.error("demo page not seen")
      @browser.screenshot.save('Openclinica_reports/screen_shots_reports/demo_page.png')
    end


    def recorded_demo
      @browser.a(:xpath =>"//*[@id='node-3']/div[1]/ul[4]/li[1]/a").click
      @log.info('recorded demo clicked successfully')
    rescue Exception => e
      @log.error("recorded demo was not clicked")
      @browser.screenshot.save('Openclinica_reports/screen_shots_reports/about_page.png')

    end





end