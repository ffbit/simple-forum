@posts-admin
Feature: Manage Posts by an Admin
  In order to manage posts
  As an admin
  I want to be able to manage ones
  
  Background: an Existing Topic and an admin
    Given I've got 1 topic
    And I'm signed in as an admin
    And I'm on the topic page
  
  Scenario: Edit an Existing Post Link
    When I click "Edit" "post" link
    Then I should be on the edit post page
  
  Scenario: Edit an Existing Post
    Given I'm on the edit post page
    When I fill in "content" field with "New post content"
    And I click "Update Post" button
    Then I should be redirected to the topic page
    And I should see "Post was successfully updated."
  
  Scenario: Seeing Delete Post Link
    Then I should see "Delete" "post" link
  
  Scenario: Clicking Delete Post Link
    When I click "Delete" "post" link
    Then I should have 0 post
    And I should be redirected to the topic page
    And I should see "Post was successfully deleted."
