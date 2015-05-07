Given(/^I am on the homepage "(.*?)"$/) do |home_url|
home_page.visit_home_page(home_url)
end



When(/^I click on about on the page$/) do
about_page.go_to_about_page
end


Then(/^I should be taken to "(.*?)"$/) do |result|
  about_page.demo_page(result)
end


And(/^I should be able to click on View recorded demonstration$/) do
about_page.recorded_demo
end