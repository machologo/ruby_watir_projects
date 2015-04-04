Feature: As a user I want to be able to login to Samsung website

  Scenario: Login with valid credentials
    Given I am on homepage
    When I login with valid credentials
    Then I should see as successful message