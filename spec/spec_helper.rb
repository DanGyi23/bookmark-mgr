ENV['RACK_ENV'] = 'test'
ENV['ENVIRONMENT'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')
require_relative './features/web_helpers'

require 'capybara'
require 'capybara/rspec'
require 'rspec'

Capybara.app = BookmarkManager

RSpec.configure do |config|
  config.before(:each) do
    delete_db_rows
    add_db_rows
  end
end
