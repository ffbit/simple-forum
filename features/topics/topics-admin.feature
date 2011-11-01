@topics-admin
Feature: Manage Topics by an Admin
  In order to manage topics
  As an admin
  I want to be able to manage ones
  
  Background: an Existing Topic and an admin
    Given I've got topic named "How to take a photo?"
    And I'm signed in as an admin
    And I'm on the forum page
  
  Scenario: Edit an Existing Topic Link
    When I click "Edit" "topic" link
    Then I should be on the edit topic page
  
  Scenario: Edit an Existing Topic
    Given I'm on the edit topic page
    When I fill in "title" field with "New topic title"
    And I click "Update Topic" button
    Then I should be redirected to the topic page
    And I should see "Topic was successfully updated."
  
  Scenario: Seeing Delete Topic Link
    Then I should see "Delete" "topic" link
  
  Scenario: Clicking Delete Topic Link
    When I click "Delete" "topic" link
    Then I should have 0 topic
    And I should be redirected to the forum page
    And I should see "Topic was successfully deleted."
