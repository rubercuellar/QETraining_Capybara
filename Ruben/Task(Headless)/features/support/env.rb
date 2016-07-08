begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'yaml'
require 'pathname'
require 'capybara/poltergeist'

AfterConfiguration do
    
	Capybara.default_driver = :poltergeist
	Capybara.register_driver :poltergeist do |app|
		options = {
			:js_errors => true,
			:timeout => 120,
			:debug => false,
			:phantomjs_options => ['--load-images=no', '--disk-cache=false'],
			:inspector => true,
		}
		Capybara::Poltergeist::Driver.new(app, options)
	end
end




