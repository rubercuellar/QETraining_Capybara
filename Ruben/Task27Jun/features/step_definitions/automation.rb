Given(/^I open automation page$/) do
  visit('http://automationpractice.com')
  page.driver.browser.manage.window.maximize
end

When(/^I click on "([^"]*)" main menu option$/) do |value|
	p page.find('#block_top_menu').text
	page.find('#block_top_menu').find('li',:text=>value).click
	@option_select=value
end

Then(/^I should see Navigation menu with option (.*?)$/) do |value|
  expect(page.find('.breadcrumb').text).to include value
end

Then(/^I should see the option selected displayed in:$/) do |table|
	menu = table.raw
	menu.each do |side|
		case side.first
			when "Category title"
				page.has_xpath?('//span[@class="cat-name firepath-matching-node"]')
				p "hello1"
				screen = page.find('h2')
			when "Main screen"
				p "hello2"
				screen = page.find('h1').all('span').first
		end
		expect(screen.text).to eq @option_select
	end
end

When(/^I insert "([^"]*)" in Search field$/) do |value|
	page.has_field?('search_query')
	fill_in("search_query",:with=> value)
end

When(/^I click on (.*?) button$/) do |value|
	page.find(:xpath, "//button[@name='submit_search']").click
end

Then(/^The result should be: "([^"]*)"$/) do |value|
	page.assert_text(value)
end

When(/^I select "([^"]*)" view$/) do |value|
  page.find('#center_column').find('li',:text=>value).click
end
