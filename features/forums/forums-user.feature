@forums-user
Feature: User can not Manage Forums
  In order to not manage forums
  As a user
  I want to be not able to manage ones
  
  Background: an Existing Forum and a user
    Given I've got forum named "People"
    And I'm signed in as a user
    And I'm on the home page
  
  Scenario: No Manage Forum Links for a user
    Then I should not see "Edit" "forum" link
    And I should not see "Delete" "forum" link
    And I should not see "New Forum" link
  
  Scenario: Restriction for a user
    When I visit the new forum page
    Then I should be redirected to the home page
    And I should see "Access denied."
