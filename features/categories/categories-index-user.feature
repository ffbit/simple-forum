@categories-index-user
Feature: Categories index for a user
  In order to have no access to the administrative section of the forum
  As an admin
  I want to not be able to manage categories
  
  Scenario: Manage Category Links a user
    Given I've got 1 category
    And I'm signed in as a user
    When I visit the home page
    Then I should not see "Edit" category link
    And I should not see "Delete" category link
    And I should not see "New Category" link
