@categories-new
Feature: New Category
  In order to manage categories
  As an admin
  I want to be able to create new categories
  
  Scenario: Successful Category Creation
    Given I'm signed in as an admin
    And I'm on the new category page
    When I fill in a "title" field with "People"
    And I click a "Create Category" button
    Then I should have 1 category
    And I should be redirected to the home page
    And I should see "Category was successfully created"
  
  Scenario: Unsuccessful Category Creation with Duplicated Title
    Given I've got category named "People"
    And I'm signed in as an admin
    And I'm on the new category page
    When I fill in a "title" field with "PeoplE"
    And I click a "Create Category" button
    Then I should have 1 category
    Then I should see "Title has already been taken"
    
  Scenario: Restriction for a user
    Given I'm signed in as a user
    When I visit the new category page
    Then I should be redirected to the home page
    And I should see "Access denied."
