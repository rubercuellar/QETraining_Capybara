Given(/^I open a search page$/) do
  visit('http://www.google.com')
  page.driver.browser.manage.window.maximize
end

When(/^I fill the phrase "(.*?)" in search field$/) do |word|
	main_page.fill_search_field(word)
end

When(/^I click on button "(.*?)"$/) do |button|
	main_page.click_button(button)
  
end

Then(/^I get the result "(.*?)"$/) do |result|
	page.assert_text(result) 
end
