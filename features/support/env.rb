require "capybara"
require "capybara/cucumber"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "http://parodify.qaninja.com.br"
end