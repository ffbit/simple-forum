@signup
Feature: Sign up
  In order to have access to the protected section of the forum
  As a user
  I want to be able to sign up with my details
  
  Background: Visit the sign up page
    Given I'm on the sign up page
  
  Scenario: Successful Sign up with valid details
    When I fill in a "email" field with "good@email.com"
    And I fill in a "password" field with "secret"
    And I fill in a "password confirmation" field with "secret"
    And I attach an "avatar"
    And I click a "Sign up" button
    Then I should see "You have signed up successfully."
    And I should have 1 user
    And user should have an avatar
    
  Scenario: Unsuccessful Sign up without an email address
    When I submit the sing up form without "email"
    Then I should see "Email can't be blank"
    And I should have 0 user
  
  Scenario: Unsuccessful Sign up without a password
    When I submit the sing up form without "password"
    Then I should see "Password can't be blank"
    And I should have 0 user
    
  Scenario: Unsuccessful Sign up without a password confirmation
    When I submit the sing up form without "password confirmation"
    Then I should see "Password doesn't match confirmation"
    And I should have 0 user
