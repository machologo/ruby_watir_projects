class HomePage


  @base_url = nil

  def initialize(browser)
    @browser  = browser
    @base_url = "http://enoteca.demo.episerver.com/en-US/"
    #@log = log
  end



  def visit_home_page
    @browser.goto(@base_url)
  end

  def search_for_wine(wine_name)
    @browser.text_field(:id => "HeaderArea_MainMenu_QuickSearch_SearchText").send_keys(wine_name)
    @browser.button(:id => "HeaderArea_MainMenu_QuickSearch_SearchSubmitButton").click
  end

  def present_existing_wine(wine_name)
    @browser.text.include?(wine_name)
  end


  def present_existing_amount(amount)
    @browser.text.include?(amount)
  end



end