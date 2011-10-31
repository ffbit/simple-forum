@categories-edit
Feature: Edit Category
  In order to manage categories
  As an admin
  I want to be able to edit an existing categories
  
  Scenario: Edit an Existing Category Link
    Given I've got 1 category
    And I'm signed in as an admin
    And I'm on the home page
    When I click "Edit" category link
    Then I should be on the edit category page
  
  Scenario: Edit an Existing category
    Given I've got 1 category
    And I'm signed in as an admin
    And I'm on the edit category page
    When I fill in "title" field with "Culture"
    And I click "Update Category" button
    Then I should be redirected to the home page
    And I should see "Category was successfully updated."
