@categories-user
Feature: Manage Categories
  In order to not manage categories
  As a user
  I want to be not able to manage ones
  
  Background: an Existing Category and a user
    Given I've got category named "People"
    And I'm signed in as a user
    And I'm on the home page
  
  Scenario: No Manage Category Links for a user
    Then I should not see "Edit" category link
    And I should not see "Delete" category link
    And I should not see "New Category" link
  
  Scenario: Restriction for a user
    When I visit the new category page
    Then I should be redirected to the home page
    And I should see "Access denied."
