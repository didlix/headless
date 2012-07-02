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


if ENV['DRIVER'] == 'selenium'
	@capabilities_options ||= {}
	@capabilities_options[:browser_name] = ENV['BROWSER_NAME'] #default browser

	capabilities = Selenium::WebDriver::Remote::Capabilities.new(@capabilities_options)
end

# make the new Remote Capabilities object


@parsed_yaml = YAML.load(File.open("config/environment.yml"))

# Setup Selenium Browsers
Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.register_driver :firefox do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.register_driver :ie do |app|
    Capybara::Selenium::Driver.new(app, :browser => :ie)
end

Capybara.register_driver :safari do |app|
    Capybara::Selenium::Driver.new(app, :browser => :safari)
end

Capybara.configure do |config|
  config.app_host = @parsed_yaml['local']['app_host']
  config.default_driver = ENV['DRIVER'].to_sym
end