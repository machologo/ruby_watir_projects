class HomePageStep


  def initialize(browser)
    @browser = browser
  end



  def visit_home_page(site_address)
    @browser.goto(site_address)
  end


  def search_for_item (wine_name)
    @browser.send_keys(wine_name)
  end


  def searched_result(wine_result)
    @browser.text.include?(wine_result)

  end

  def present_displayed(wine_amount)
    @browser.text.include?(wine_amount)

  end



end