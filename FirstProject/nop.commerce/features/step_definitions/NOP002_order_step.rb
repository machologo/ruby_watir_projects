Given(/^that I am authenticated$/) do
  login_page.visit_home_page
  login_page.logon_with_valid_data
end


When(/^I select sales$/) do
 orders_page.select_sales
 orders_page. process_customers
end


Then(/^I should process customers orders$/) do
  orders_page.process_customers
end
