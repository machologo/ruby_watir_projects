Feature: Getting a demo on Openclinica website

  Scenario: Navigating to view a recorded demo video on the website

    Given I am on the homepage "www.openclinica.com"
    When I click on about on the page
    Then I should be taken to "Get a demo"
    And I should be able to click on View recorded demonstration