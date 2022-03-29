# arq de configuração (substitua o 1° require 'cucumber' para )
# require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there'
require 'active_support/all'
require 'rspec'
require 'rspec/expectations'
require_relative 'page.initialize.rb'
include RSpec::Matchers

# variavel do arq de inicialização "cucumber.yml" 
Environment = ENV['URL']

# global que instancia todas as paginas criadas na pasta "pages"
World(Page) 

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  # config.app_host = 'https://www.linkedin.com/'
  config.app_host = Environment
  config.default_max_wait_time = 5
end