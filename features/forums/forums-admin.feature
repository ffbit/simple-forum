@forums-admin
Feature: Manage Forums
  In order to manage forums
  As an admin
  I want to be able to manage ones
  
  Background: an Existing Forum and an admin
    Given I've got forum named "Java"
    And I'm signed in as an admin
    And I'm on the home page
    
  Scenario: Manage Forum Links
    Then I should see "Edit" "forum" link
    And I should see "Delete" "forum" link
    And I should see "New Forum" link
  
  Scenario: New Forum Link
    When I click "New Forum" link
    Then I should be on the new forum page
  
  Scenario: Successful Forum Creation
    Given I click "New Forum" link
    When I fill in a "title" field with "Python"
    And I click a "Create Forum" button
    Then I should have 2 forums
    And I should be redirected to the home page
    And I should see "Forum was successfully created"

#  I couldn't make it work in category scope.
#  Scenario: Unsuccessful Forum Creation with Duplicated Title
#    Given I click "New Forum" link
#    When I fill in a "title" field with "JavA"
#    And I click a "Create Forum" button
#    Then I should have 1 forum
#    Then I should see "Title has already been taken"
  
  Scenario: Edit an Existing Forum Link
    When I click "Edit" "forum" link
    Then I should be on the edit forum page
  
  Scenario: Edit an Existing forum
    Given I'm on the edit forum page
    When I fill in "title" field with "Ruby"
    And I click "Update Forum" button
    Then I should be redirected to the home page
    And I should see "Ruby" "forum" link
    And I should see "Forum was successfully updated."
  
  Scenario: Seeing Delete Forum Link
    Then I should see "Delete" "forum" link
  
  Scenario: Clicking Delete Forum Link
    When I click "Delete" "forum" link
    Then I should have 0 forum
    And I should be redirected to the home page
    And I should see "Forum was successfully deleted."
