Feature: I want to be able to add new customers

  Scenario: As authenticated user I want to be able to add new customers

    Given that I am authenticated user
    When I click on customers drop down list
    Then I will be able to add new customers

