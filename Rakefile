require 'rake'
require 'term/ansicolor'
require 'erb'
require 'pathname'
require 'cucumber'
require 'cucumber/rake/task'
require 'yaml'

include Term::ANSIColor


@capabilities_options ||= {}

namespace :qa do

  namespace :tests do


    # Produce a Cucumber HTML report
    namespace :report do

      desc "run all tests with phantomJS (headless, fast), add @tags to the end as required"
      task :default do

      end

      Cucumber::Rake::Task.new :poltergeist, "run all tests with phantomJS (headless, fast), add @tags to the end as required" do |task|
        # task.cucumber_opts = "--tags @wip"
        task.profile = "poltergeist"
      end

      Cucumber::Rake::Task.new :firefox, "run all tests with firefox, add @tags to the end as required" do |task|
        task.profile = "firefox"
        @capabilities_options['browser_name'] = 'firefox'
      end

      Cucumber::Rake::Task.new :chrome, "run all tests with chrome, add @tags to the end as required" do |task|
        task.profile = "chrome"
        @capabilities_options['browser_name'] = 'chrome'
      end

      Cucumber::Rake::Task.new :safari, "run all tests with safari, add @tags to the end as required" do |task|
        task.profile = "safari"
        @capabilities_options['browser_name'] = 'safari'
      end

      Cucumber::Rake::Task.new :ie, "run all tests with Internet Explorer, add @tags to the end as required" do |task|
        task.profile = "ie"
        @capabilities_options['browser_name'] = 'ie'
      end   
            
    end

  end

end


require 'launchy'

class Temppath

  def create_tempoary_path
    @tempoary_path = "tmp/" + (0...8).map{65.+(rand(25)).chr}.join + ".html"
  end

  def get_tempoary_path
    @tempoary_path
  end

  def open_report
    Launchy.open Pathname.pwd + "/" + self.get_tempoary_path
  end

end