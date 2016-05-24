Feature: Search functionality for Marks and Spencer e-commerce website

As a user of M&S shopping web site
I want to be able to search for items as well as browse using links
So that I can locate the items that I am interested

  Background: 
    Given I am on M&S website
  
  Scenario Outline: Search for valid team
    Given I have entered a valid search term of "<term>"
     When I hit the search button 
     Then I should have a list of items related to my search with "<msg>" displayed
      And I should see a list of results related to the search term
  
    Examples: 
      | term  | msg                      | 
      | Socks | Search results for Socks | 
      | Shoes | Search results for Shoes | 
      | Jeans | Search results for Jeans | 
  
  Scenario Outline: Search for invalid team
    Given I have entered a invalid search term of "<term>"
     When I hit the search button 
     Then I should see an empty list
     Then I should have a list of items related to my search with "<msg>" displayed
  
    Examples: 
      | term      | msg                                                                                    | 
      | shgdhfg   | You searched for shgdhfg, we're sorry we couldn't find anything to match your search   | 
      | dsfsdf    | You searched for dsfsdf, we're sorry we couldn't find anything to match your search    | 
      | Jeansdasd | You searched for Jeansdasd, we're sorry we couldn't find anything to match your search | 
  
  Scenario: Display only a single Item from search result
    Given I have entered a valid search term "Jeans"
     When I hit the search button 
     Then I should have a list of items related to my search
     When I select the first item from the search
     Then I should be on the item details page
  
  Scenario Outline: Browse by category
     When I browse to "<category>" category
     Then I should be on the "<result>" category page
  
    Examples: 
      | category         | result           | 
      | HOME & FURNITURE | HOME & FURNITURE | 
      | FOOD & WINE      | FOOD & WINE      | 
  
  Scenario: Locate a M&S store
    Given I search for location in "Edgware Road"
     Then I should see "Edgware Road" store on the list 
  
  #@wip 
  #Scenario: Register a new user
  #  Given I am on the registration page
  #   When I enter my personal details
  #    And I confirm registration
  
