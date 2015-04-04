Given(/^that I am on the home page$/) do
  login_page.visit_home_page
end

When(/^I logon with valid data$/) do
  login_page.logon_with_valid_data
end


Then(/^I should see as successful message$/) do
  expect(login_page.verify).to be true
end


And(/^I logout successfully$/) do
  login_page.logout
end