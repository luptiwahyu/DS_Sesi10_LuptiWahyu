Feature: Swag Labs - Login
  Background: User on the login page
    Given Lupti is on the login page

  @positive
  Scenario: As a standard_user, i want to login successfully
    When Lupti login with "standard_user" credential
    Then Lupti should see home page

  @negative
  Scenario: As a locked_out_user, i should get error message
    When Lupti login with "locked_out_user" credential
    Then Lupti should see error "Epic sadface: Sorry, this user has been locked out."

  @positive
  Scenario: As a problem_user, i want to login successfully
    When Lupti login with "problem_user" credential
    Then Lupti should see home page

  @positive
  Scenario: As a performance_glitch_user, i want to login successfully
    When Lupti login with "performance_glitch_user" credential
    Then Lupti should see home page

  @positive
  Scenario: As a error_user, i want to login successfully
    When Lupti login with "error_user" credential
    Then Lupti should see home page

  @positive
  Scenario: As a visual_user, i want to login successfully
    When Lupti login with "visual_user" credential
    Then Lupti should see home page
