@categories-index
Feature: Categories index
  In order to list forum categories
  As a visitor
  I want to be able to see categories
  
  Scenario: List of categories
    Given I've got categories named "People, Sport"
    When I visit the home page
    Then I should see "People" category
    And I should see "Sport" category
    
