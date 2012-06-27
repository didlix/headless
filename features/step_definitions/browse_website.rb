When /^I visit "(.*?)"$/ do |place|
  visit place
end

Then /^I should see "(.*?)"$/ do |content|
  page.should have content
end

Given /^I am on the home page$/ do
  visit "/index.html"
end

When /^I click on "(.*?)"$/ do |link|
	click_link link
end