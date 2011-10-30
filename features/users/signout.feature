@signout
Feature: Sign out
  In order to protect my account from unauthorized access
  As a signed user
  I want to be able to sign out
  
  Scenario: Sign out
    Given I've signed in
    When I visit the sign out page
    Then I should see "Signed out successfully."
