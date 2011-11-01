@posts-user
Feature: Post Creation by a User
  In order to answer a question
  As a user
  I want to be able to create a post
  
  Background: an Existing Topic and a User
    Given I've got 1 topic
    And I'm signed in as a user
    And I'm on the topic page
    When I click "New Post" link
  
  Scenario: Successfull post creation
    When I fill in a "content" field with "You can solve your problem in this way..."
    And I click "Create Post" button
    Then I should see "Post was successfully created"
    And I should see "You can solve your problem in this way..."
    And I should be on the topic page
    And I should have 2 post
  
  Scenario: Unsuccessfull post creation without a content
    When I submit the new post form without "content"
    Then I should see "Content can't be blank"
    And I should have 1 post
