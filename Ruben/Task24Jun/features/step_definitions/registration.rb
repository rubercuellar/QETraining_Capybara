
Given(/^I open web page$/) do
  visit('http://demoqa.com/')
  page.driver.browser.manage.window.maximize
end


When(/^I select "(.*?)" option$/) do |option|
  page.click_on(option)
end


Then(/^I should see "(.*?)" title displayed$/) do |title|
	page.assert_text(title)
end

When(/^I click on "([^"]*)" button$/) do |button|
  click_on(button)
end

Then(/^I should see (\d+) validation messages with "([^"]*)"$/) do |arg1, arg2|
  page.assert_text(arg2,:count => arg1)
end

Given(/^I fill first name:$/) do |table|
	table = table.rows_hash
	table.each_pair do |label, value|
		label_found = page.find('label',:text => label)
		label_found.find(:xpath, './/following-sibling::input[1]').set value
	end
end

Given(/^I fill the fields in the form:$/) do |table|
  table = table.rows_hash
	table.each_pair do |label, value|
		label_found = page.find('label',:text => /^#{label}$/)
		label_found.find(:xpath, './/following-sibling::input[1]').set(value)
	end
end

Given(/^I select "([^"]*)" checkbox$/) do |checkbox|
	label_found = page.find(:xpath, "//label[contains(.,'#{checkbox}')]")
	label_found.find(:xpath, './/following-sibling::input[1]').set(true)
end

Then(/^The message: "([^"]*)" should be displayed$/) do |message|
	expect(page.assert_text(message)).to eq(true)
end
