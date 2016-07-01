Feature: Automation Practice
Background: Open Automation Screen

Given I open automation page

Scenario: Navigation Menu - Verify DRESSES
When I click on "DRESSES" main menu option
Then I should see Navigation menu with option Dresses
	And I should see the option selected displayed in:
	|Category title|
	|Main screen|
	
	
Scenario: Navigation Menu - Verify T-SHIRTS
When I click on "T-SHIRTS" main menu option
Then I should see Navigation menu with option T-shirts
	And I should see the option selected displayed in:
	|Main screen|
	
Scenario: Search - Positive
When I insert "short" in Search field
	And I click on Search button
Then The result should be: "4 results have been found"
When I select "List" view

Scenario: Search - Negative
When I insert "holas" in Search field
	And I click on Search button
Then The result should be: "0 results have been found"
Then The result should be: "No results were found for your search"
