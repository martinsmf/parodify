require "capybara"
require "capybara/cucumber"

require_relative "helpers.rb"

World(Helpers)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "http://parodify.qaninja.com.br"
end