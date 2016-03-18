Feature: Positive_login
  As User
  I want to be able
  to sign in to Redmine

  Background: Registration
     Given I have registered user

  Scenario: Positive login
    Given I am not logged in
    When  I submit valid credentials
    Then  I am logged in