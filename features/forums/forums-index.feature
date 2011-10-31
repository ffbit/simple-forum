@forums-index
Feature: Forums index
  In order to list forums of a category
  As a visitor
  I want to be able to see them
  
  Scenario: List of forums
    Given I've got forums named "Java, Python"
    When I visit the home page
    Then I should see "Java" "forum" link
    And I should see "Python" "forum" link
