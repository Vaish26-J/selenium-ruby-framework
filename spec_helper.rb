require 'selenium-webdriver'
require 'pry'
require 'logger'
require 'yaml'
require 'allure-rspec'

puts "inside spec helper"
RSpec.configure do |config|
end
puts "crossed rspec config"
AllureRspec.configure do |config|
    config.results_directory = 'allure-results'
end
puts "crossed allure config"
['locators/*.rb', 'pages/*.rb'].each do |path|
    puts "path #{path}"
    puts "dir #{__dir__}"
    Dir[File.join(__dir__, path)].each do |file|
        puts "file #{file}"
        require file
    end
end