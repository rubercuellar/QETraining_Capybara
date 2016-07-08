@tag1
Feature: Registration Form
Background: Open app and select reg

Given I open web page
When I select "Registration" option
Then I should see "Registration" title displayed

Scenario: Registration form filling

When I click on "Submit" button
Then I should see 7 validation messages with "* This field is required"

Given I fill first name:
|First Name|Ruber|
When I click on "Submit" button
Then I should see 6 validation messages with "* This field is required"

Scenario: Complete the registration

Given I fill the fields in the form:
|First Name|Ruber|
|Last Name|Cuellar|
|Phone Number|70748552348|
|Username|rubercuellar9|
|E-mail|ruber9@mailjala.com|
|Password|Control123*-|
|Confirm Password|Control123*-|

And I select "Reading" checkbox
When I click on "Submit" button
Then The message: "Thank you for your registration" should be displayed

Scenario: Verify the user exists

Given I fill the fields in the form:
|First Name|Ruber|
|Last Name|Cuellar|
|Phone Number|70748552348|
|Username|rubercuellar9|
|E-mail|ruber10@mailjala.com|
|Password|Control123*-|
|Confirm Password|Control123*-|

And I select "Reading" checkbox
When I click on "Submit" button
Then The message: "Error: Username already exists" should be displayed


	



