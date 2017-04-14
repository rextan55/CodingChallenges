Feature: Testing some of the features of the heroku app website

  Scenario: Testing Heroku
    Given I go to "http://the-internet.herokuapp.com"
    When I navigate to the dropdown page
    Then I should be able to click the dropdown
    And select "Option 1"
