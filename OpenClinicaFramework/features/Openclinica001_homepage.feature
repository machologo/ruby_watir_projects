Feature: Search for an item

  Scenario: Search for an item on the homepage so as to see displayed result
    Given I am on the home page  "www.openclinica.com"
    When I search for "version migration"
    Then I will see displayed result as "CRF Version Migration"