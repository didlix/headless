require 'rake'
require 'term/ansicolor'
require 'erb'
require 'pathname'
require 'cucumber'
require 'cucumber/rake/task'
require 'yaml'

include Term::ANSIColor

PROJECT_ROOT = Pathname.pwd

namespace :qa do

  namespace :tests do

    namespace :report

      Cucumber::Rake::Task.new(:features, :tags) do |task, tags|
        t.cucumber_opts = "--format html"
      end

      # run all tests with phantomJS (headless, fast), add @tags to the end as required
      Cucumber::Rake::Task.new(:phantom) do |task|
        task.cucumber_opts = "--tags @wip"
        task.profile = 'poltergeist'
      end

      # run all tests with firefox, add @tags to the end as required
      Cucumber::Rake::Task.new(:firefox) do |task|
        task.cucumber_opts = "--tags @wip"
        task.profile = 'firefox'
      end

      
      Cucumber::Rake::Task.new(:data) do |task|
        t.cucumber_opts = "--tags @data SKIP_DB=1"
      end

    end

  end

end


require 'launchy'

class html_repots

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