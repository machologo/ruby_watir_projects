
Given(/^I am on the home page  "(.*?)"$/) do |site_url|
 home_page.visit_home_page(site_url)
end



When(/^I search for "(.*?)"$/) do |search_criteria|
  home_page.search_item(search_criteria)
end



Then(/^I will see displayed result as "(.*?)"$/) do |search_result|
  home_page.present_displayed(search_result)
end