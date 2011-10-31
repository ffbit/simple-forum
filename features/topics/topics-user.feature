@topics-user
Feature: Topic Creation by a User
  In order to not ask a question
  As a user
  I want to be not able to create a topic
  
  Background: an Existing Topic and a User
    Given I've got forum named "Photo"
    And I'm signed in as a user
    And I'm on the forum page
    When I click "New Topic" link
  
  Scenario: Successfull topic creation
    When I fill in a "title" field with "How to take a photo?"
    And I fill in a "content" field with "What is my problem?"
    And I click "Create Topic" button
    Then I should see "Topic was successfully created"
    And I should see "How to take a photo?"
    And I should be on the topic page
    And I should have 1 topic
    And I should have 1 post
  
  Scenario: Unsuccessfull topic creation without a title
    When I submit the new topic form without "title"
    Then I should see "Title can't be blank"
    And I should have 0 topic
    And I should have 0 post
  
  Scenario: Unsuccessfull topic creation without a content
    When I submit the new topic form without "content"
    Then I should see "Content can't be blank"
    And I should have 0 topic
    And I should have 0 post
