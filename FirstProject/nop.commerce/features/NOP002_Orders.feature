Feature: Making an order through sale

  Scenario: As authenticated user I want to make orders
    Given that I am authenticated
    When I select sales
    Then I should process customers orders