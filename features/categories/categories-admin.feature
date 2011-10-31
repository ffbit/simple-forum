@categories-admin
Feature: Manage Categories
  In order to manage categories
  As an admin
  I want to be able to manage ones
  
  Background: an Existing Category and an admin
    Given I've got category named "People"
    And I'm signed in as an admin
    And I'm on the home page
    
  Scenario: Manage Category Links
    Then I should see "Edit" category link
    And I should see "Delete" category link
    And I should see "New Category" link
  
  Scenario: New Category Link
    When I click "New Category" link
    Then I should be on the new category page
  
  Scenario: Successful Category Creation
    And I'm on the new category page
    When I fill in a "title" field with "Sport"
    And I click a "Create Category" button
    Then I should have 2 categories
    And I should be redirected to the home page
    And I should see "Category was successfully created"
  
  Scenario: Unsuccessful Category Creation with Duplicated Title
    Given I'm on the new category page
    When I fill in a "title" field with "PeoplE"
    And I click a "Create Category" button
    Then I should have 1 category
    Then I should see "Title has already been taken"
  
  Scenario: Edit an Existing Category Link
    When I click "Edit" category link
    Then I should be on the edit category page
  
  Scenario: Edit an Existing category
    Given I'm on the edit category page
    When I fill in "title" field with "Culture"
    And I click "Update Category" button
    Then I should be redirected to the home page
    And I should see "Category was successfully updated."
  
  Scenario: Seeing Delete Category Link
    Then I should see "Delete" category link
  
  Scenario: Clicking Delete Category Link
    When I click "Delete" category link
    Then I should have 0 category
