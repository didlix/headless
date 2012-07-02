headless
========

This is a very basic example of headless BDD testing using Cucumber, Capybara, Mechanize and RSpec.

Usage (Only tested on Mac):

Install PhantomJS: brew install phantomjs

Clone this repository onto your system

Install RVM https://rvm.io/rvm/install/

Install Ruby Enterprise Edition ( rvm install ree; rvm use ree --default ) - There is a .rvmrc file in the root directory which should do this for you when you change into the root directory.

From the root directory, run `bundle install`

Now run `selenium install`

This will install the required ruby gems.

Setup a vhost on your system, and add a line to your hosts file so you can access index.html from a web browser. You can configure the hostname in 'config/environment.yml'

Run `cucumber` and watch the tests pass and fail.


With Love,

didlix
