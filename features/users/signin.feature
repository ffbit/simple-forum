@signin
Feature: Sign in
  In order to have access to the protected section of the forum
  As a user
  I want to be able to sign up with my details
  
  Scenario: Successful Sing in
    Given I'm on the sing in page
    And I've got a user
    When I sign in
    Then I should see "Signed in successfully."
  
  Scenario: Unsuccessful Sing in without an email address
    Given I'm on the sing in page
    And I've got a user
    When I submit the sing in form without "email"
    Then I should see "Invalid email or password."
  
  Scenario: Unsuccessful Sing in without a password
    Given I'm on the sing in page
    And I've got a user
    When I submit the sing in form without "password"
    Then I should see "Invalid email or password."
