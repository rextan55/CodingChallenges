Feature: Testing the ESPN Frontpage

  Scenario: Going to the ESPN landing page and clicking NFL
    Given I go to "http://www.espn.com"
    When I tap on NFL
    Then it should show the nfl page
    Then I should click the Log In button
    Then I should input my credentials "RexTan55" un and "Runningriot255" pw
    Then I should successfully log in with "Rex"