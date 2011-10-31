@forums-index
Feature: Forums index
  In order to list forums of a category
  As a visitor
  I want to be able to see them
  
  Background: Existing forums
    Given I've got forums named "Java"
    When I visit the home page
  
  Scenario: List of forums
    Then I should see "Java" "forum" link
  
  Scenario: Visiting a forum
    When I click "Java" "forum" link
    Then I should be on the forum page
