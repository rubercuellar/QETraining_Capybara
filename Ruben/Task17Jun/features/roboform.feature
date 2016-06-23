Feature: RoboForm fill form
Scenario: Fill form
Given I visit Roboform and fill form
Given I fill field with value
|name|value|
|name|value|
|name|value|
|name|value|
|name|value|
Given I select field with value
|name|value|
|name|value|
|name|value|
When click reset button
Then all fields should be empty


