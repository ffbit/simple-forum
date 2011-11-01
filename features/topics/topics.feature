@topics
Feature: Topics
  In order to list topics of a forum
  As a visitor
  I want to be able to see them
  
  Background: Existing topics
    Given I've got topic named "How to learn something from scratch?"
    When I visit the forum page
  
  Scenario: List of topics
    Then I should see "How to learn something from scratch?" "topic" link
  
  Scenario: Visiting a topic
    When I click "How to learn something from scratch?" "topic" link
    Then I should be on the topic page
  
  Scenario: No New Topic link
    Then I should not see "New Topic" link
