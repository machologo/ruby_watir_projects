Feature: As a user I want to be able to make and order and verify my order on homepage

  Scenario: I want to order a wine but I want to verify if the wine exists.

    Given I am on the homepage "www.enoteca.demo.episerver.com"
    When I search for "Connoisseur"
    Then I can see searched result for my item as "Connoisseur Reds 12 x 75cl Bottles"
    And the price will show as "8.15"