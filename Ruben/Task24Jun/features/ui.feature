@tag
Feature: Registration
Scenario: Validation UI
Background: Open application and select registration option

Given I open the testing page
When I verified the UI 

Then The page should be loaded with the following fields:
|Home|About us|Services|Demo|Blog|Contact|

Then page should be loaded with the following labels:
|Home|Unique & Clean|Customer Support|Very Flexible|Registration|interaction|Widget|Frames and Windows|

Then page should be loaded with the following menu options:
|Registration|Draggable|Droppable|Resizable|Selectable|Sortable|Accordion|Autocomplete|Datepicker|Menu|Slider|Tabs|Tooltip|Frames and windows|

Then Page should be loaded with tabs:
|Tab 1|Content 1 Title|
|Tab 2|Content 2 Title|
|Tab 3|Content 3 Title|
|Tab 4|Content 4 Title|
|Tab 5|Content 5 Title|

Then Page should be loaded with the following text "Selenium is a software testing framework for"

Scenario: Regsitration validation and fill form

When I select "Registration" option
Then I should see "Registration" title displayed

Scenario: Registration form filling

When I click on "Submit" button
Then I should see 7 validation messages with "* This field is required"
