Feature: Testing valid and invalid login functionality

#@regression
Scenario: Check with valid credentials
  Given that I am on the home page
  When I logon with valid data
  Then I should see as successful message
  And I logout successfully
