@signin
Feature: Sign in
  In order to have access to the protected section of the forum
  As a user
  I want to be able to sign up with my details
  
  Background: Sign out and visit the sign in path
    Given I'm on the sing in page
    And I've got a user
  
  Scenario: Successful Sing in
    When I sign in
    Then I should see "Signed in successfully."
  
  Scenario: Unsuccessful Sing in without an email address
    When I submit the sing in form without "email"
    Then I should see "Invalid email or password."
  
  Scenario: Unsuccessful Sing in without a password
    When I submit the sing in form without "password"
    Then I should see "Invalid email or password."
