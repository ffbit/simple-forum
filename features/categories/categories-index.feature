@categories-index
Feature: Categories index
  In order to list forum categories
  As a visitor
  I want to be able to see categories
  
  Background: Exiting Categories
    Given I've got categories named "People, Sport"
  
  Scenario: List of categories
    When I visit the home page
    Then I should see "People" category
    And I should see "Sport" category
  
  Scenario: Manage Category Links for an admin
    Given I'm signed in as an admin
    When I visit the home page
    Then I should see "Edit" category link
    And I should see "Delete" category link
    And I should see "New Category" link
  
  Scenario: No Manage Category Links a user
    Given I'm signed in as a user
    When I visit the home page
    Then I should not see "Edit" category link
    And I should not see "Delete" category link
    And I should not see "New Category" link
