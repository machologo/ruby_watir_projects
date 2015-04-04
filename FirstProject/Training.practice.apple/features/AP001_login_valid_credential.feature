
Feature: Log into apple website using valid credential

  Scenario: sign-on with valid credential

    Given that I am on the home page
    When I complete  valid credential
    Then I should be able to sign in to the website
    And I should be able to search for iphone 6 128gb Gold

