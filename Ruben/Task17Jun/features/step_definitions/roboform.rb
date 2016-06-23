Given(/^I visit Roboform and fill form$/) do
  visit{''}
end

Given(/^I fill field with value$/) do |table|
  
  
end

Given(/^I select field with value$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^click reset button$/) do
  page.find_button('Rest').click()
end