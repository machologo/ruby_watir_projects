Given(/^that we are on the home page of the app$/) do
 home_page.visit_home_page
end



When(/^we search for a wine called "(.*?)"$/) do |wine_name|
  home_page.search_for_wine(wine_name)
end




Then(/^we should see a wine called "(.*?)"$/) do |wine_name|
  expect(home_page.present_existing_wine(wine_name)).to be true
end



And(/^i should cost "(.*?)"$/) do |amount|
  expect(home_page.present_existing_amount(amount)).to be true
end