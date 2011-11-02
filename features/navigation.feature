@navigation
Feature: Navigation
  In order to have public links
  As a visitor
  I want to follow them
  
  Scenario: Home Page
    Given I'm on the home page
    Then I should see "Sign up" link
    And I should see "Sign in" link
    And I should see "Home" link
    And I should not see "Sign out" link
