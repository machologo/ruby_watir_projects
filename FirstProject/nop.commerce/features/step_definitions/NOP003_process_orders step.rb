Given(/^that I am logged\-on to the application$/) do
  login_page.visit_home_page
  login_page.logon_with_valid_data
end


When(/^I click on sales drop down list$/) do
  orders_page.select_sales
  orders_page. process_customers
end


Then(/^I should be able to process customers orders$/) do
  process_orders_page.process_customers_orders
end