Given(/^that I am logged on the application$/) do
  login_page.visit_home_page
  login_page.logon_with_valid_data
end

When(/^I go to promotion and discount page$/) do
promotion_page.promotion_and_discount
end



Then(/^I can be able to add and set\-up new discount$/) do
add_new_discount_page.add_and_set_up_new_discount
end