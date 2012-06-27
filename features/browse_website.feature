Feature: Super-Intelligent, Radioactive-Squirrel browses the website

	Scenario: Squirrel visits home page
		When I visit "/index.html"
		Then I should see "Hello World"

	Scenario: Squirrel visits about pahe
		Given I am on the home page
		When I click on "About"
		Then I should see "Squirrels rule!"