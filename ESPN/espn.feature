Feature: Go to espn.go.com and login


  Scenario: Hit espn and tap on Login
    Given I go to espn
    When I tap on Login
    Then The login page should display
