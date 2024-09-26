Feature: login Feature

  Scenario: As a user, I can login into superapp dashboard
  
    Given I send login url
    When I login with credential
    Then I see usernameDisplay

