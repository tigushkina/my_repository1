Feature: Registration
  As User
  I want to be able
  to register in Redmine

  Scenario: Positive registration
    Given on registration page of Redmine
    When valid credentials are submitted
    Then registration is successful