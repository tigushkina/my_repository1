Feature: Login
  As User
  I want to be able
  to sign in to Redmine

  Scenario: Positive sign in
    Given login form on login page of Redmine
    When correct credentials are added
    Then login is successful

  Scenario: Negative sign in

    Given login form on login page of Redmine
    When incorrect credentials are added
    Then login is not successful

  Scenario: Login with empty fields

    Given login form on home page of Redmine
    When empty credentianls are submitted
    Then login is not successful
