require 'rake'
require 'term/ansicolor'
require 'erb'
require 'pathname'
require 'cucumber'
require 'cucumber/rake/task'
require 'yaml'

include Term::ANSIColor


@capabilities_options ||= {}

require 'launchy'

namespace :tests do

  Cucumber::Rake::Task.new :run, "Quickly run tests with PhantomJS, displaying output to the console" do |task|
    task.profile = "poltergeist"
    task.cucumber_opts = "--format pretty --format html -o dev_poltergeist_report.html"
  end   

  namespace :report do

    Cucumber::Rake::Task.new :poltergeist, "run all tests with phantomJS (headless, fast), add @tags to the end as required" do |task|
      task.profile = "poltergeist"
      task.cucumber_opts = "--format html -o poltergeist_report.html"
    end

    Cucumber::Rake::Task.new :firefox, "run all tests with firefox, add @tags to the end as required" do |task|
      task.profile = "firefox"
      task.cucumber_opts = "--format html -o firefox_report.html"
    end

    Cucumber::Rake::Task.new :chrome, "run all tests with chrome, add @tags to the end as required" do |task|
      task.profile = "chrome"
      task.cucumber_opts = "--format html -o chrome_report.html"
    end

    Cucumber::Rake::Task.new :safari, "run all tests with safari, add @tags to the end as required" do |task|
      task.profile = "safari"
      task.cucumber_opts = "--format html -o safari_report.html"
    end

    Cucumber::Rake::Task.new :ie, "run all tests with Internet Explorer, add @tags to the end as required" do |task|
      task.profile = "ie"
      task.cucumber_opts = "--format html -o ie_report.html"
    end   
          
  end

end