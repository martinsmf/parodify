require "allure-cucumber"
require "capybara"
require "capybara/cucumber"

require_relative "helpers.rb"

World(Helpers)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "http://parodify.qaninja.com.br"
  config.default_max_wait_time = 10
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
