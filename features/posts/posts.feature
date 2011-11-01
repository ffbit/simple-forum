@posts
Feature: Topics
  In order to list posts of a topic
  As a visitor
  I want to be able to see them
  
  Background: Existing topic and posts
    Given I've got topic named "How to learn something from scratch?"
    And I've got posts with content "It's not hard"
    When I visit the topic page
  
  Scenario: List of posts
    Then I should see "It's not hard" "post"
  
  Scenario: Posts count
    Then I should have 2 posts
  
  Scenario: No New Post link
    Then I should not see "New Post" link
  
  Scenario: Pagination
    Given I've got 12 posts
    When I visit the topic page
    Then I should see 10 "posts"
