@categories-index-admin
Feature: Categories index for an admin
  In order to have access to the administrative section of the forum
  As an admin
  I want to be able to manage categories
  
  Scenario: Manage Category Links for an admin
    Given I'm signed in as an admin
    Given I've got 1 category
    When I visit the home page
    Then I should see "Edit" category link
    And I should see "Delete" category link
    And I should see "New Category" link
