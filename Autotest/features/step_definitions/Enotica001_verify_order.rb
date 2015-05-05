Given(/^I am on the homepage (.*?)$/) do |site_address|
  home_page.visit_home_page(site_address)
end


When(/^I search for (.*?)$/) do |wine_name|
  home_page.search_for_item (wine_name)
end


Then(/^I can see searched result for my item as (.*?)$/) do |wine_result|
  home_page.searched_result(wine_result)
end


And(/^the price will show as (.*?)$/) do |wine_amount|
  expect(home_page.present_displayed(wine_amount)).to be true
 end