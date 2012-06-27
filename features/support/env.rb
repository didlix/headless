# encoding: utf-8

require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara/mechanize/cucumber'
require 'capybara/rspec'

require 'rspec'
require 'rspec/expectations'

require 'yaml'

@parsed_yaml = YAML.load(File.open("config/environment.yml"))

Capybara.configure do |config|
  config.run_server = false
  config.app_host = @parsed_yaml['local']['app_host'] # change this
end

Capybara.default_driver = :mechanize