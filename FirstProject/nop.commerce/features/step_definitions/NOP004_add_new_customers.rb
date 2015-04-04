Given(/^that I am authenticated user$/) do
  login_page.visit_home_page
  login_page.logon_with_valid_data
end


When(/^I click on customers drop down list$/) do
  click_customers_drop_down_list_page.click_customers_drop_down_list
end


Then(/^I will be able to add new customers$/) do

add_new_customers_page.add_new_customers
 end