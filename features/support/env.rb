# encoding: utf-8

require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'rspec'
require 'rspec/expectations'
require 'yaml'

# load relevant driver
case ENV['DRIVER']
when "chrome"
when "safari"
	require 'capybara-webkit'
when 'poltergeist'
	require 'capybara/poltergeist'
when "selenium"
	require 'selenium-webdriver'
end

browser = ENV['BROWSER_NAME'].to_sym

# Setup Selenium Browsers
if ENV['DRIVER'] == 'selenium'

	Capybara.register_driver browser do |app|
	    Capybara::Selenium::Driver.new(app, :browser => browser)
	end

end

@parsed_yaml = YAML.load(File.open("config/environment.yml"))

Capybara.configure do |config|
  config.app_host = @parsed_yaml['local']['app_host']
  config.default_driver = browser
end