Given(/^I open a search page$/) do
  visit('http://www.google.com')
end

When(/^I fill the phrase "(.*?)" in search field$/) do |word|
	fill_in 'q',:with=> word
end

When(/^I click on button "(.*?)"$/) do |button|
	click_on(button)
end

Then(/^I get the result "(.*?)"$/) do |result|
  page.find 'h3',:text => result
end
