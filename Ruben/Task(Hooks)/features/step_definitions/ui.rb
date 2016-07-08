Given(/^I open the testing page$/) do
  visit('http://demoqa.com/')
  page.driver.browser.manage.window.maximize
end

When(/^I verified the UI$/) do
	# nothing
end

Then(/^The page should be loaded with the following fields:$/) do |table|
	@table = table.raw
	@table.each do |label|
		label.each do |label2|
			expect(page.has_link?(label2)).to eq(true)
		end
	end
end

Then(/^page should be loaded with the following labels:$/) do |table|
	@table = table.raw
	@table.each do |label|
		label.each do |label2|
			expect(page.has_content?(label2)).to eq(true)
		end
	end
end

Then(/^page should be loaded with the following menu options:$/) do |table|
  	@table = table.raw
	@table.each do |label|
		label.each do |label2|
			expect(page.has_link?(label2)).to eq(true)
		end
	end
end

Then(/^Page should be loaded with tabs:$/) do |table|
	@table = table.rows_hash
	@table.each_pair do |tab, tabContent|
		page.has_link?(tab)
		page.click_on(tab)
		page.assert_text(tabContent)
	
	end
end


Then(/^Page should be loaded with the following text "(.*?)"$/) do |arg1|
	page.assert_text(arg1)
end


