require 'selenium-webdriver'
require 'pry'
require 'logger'
require_relative '../pages/driver'
require_relative '../pages/login_page'
require_relative '../locators/login'

RSpec.describe 'LoginPage' do

    before(:all) do
        @driver = DriverClass::Driver.new.driver
        @login_page = Pages::Login.new(@driver)
        timestamp = Time.now.strftime('%Y%m%d_%H%M%S')
        @logger = Logger.new("logs/test_#{timestamp}.log")
    end

    before(:each) do
        @login_page.go_to_login
        sleep 3
    end

    after(:each) do |example|
        if example.exception
            @logger.error("Failed test = #{example.description}")
            @logger.error(example.exception.message)
            file_name = example.description.gsub(' ', '_')
            identifier = Time.now.strftime('%Y%m%d_%H%M%S')
            @driver.save_screenshot("screenshots/#{file_name}_#{identifier}.png")
        end
    end

    after(:all) do
        @driver.quit
    end

    it 'Verify if the login functionality works properly in the application' do
        @login_page.login('tomsmith', 'SuperSecretPassword!')
        sleep 2
        expect(@driver.find_element(Locators::Login::SECURE_AREA_HEADER).displayed?).to be true
        @driver.find_element(Locators::Login::LOGOUT_BUTTON).click
    end

    it 'Verify authentication error on invalid password' do
        @login_page.login('tomsmith', 'RandomPassword')
        expect(@driver.find_element(Locators::Login::PASSWORD_ERROR).displayed?).to be true
    end

    it 'Verify authentication error when username is invalid' do
        sleep 3
        @login_page.login('randomUsername', 'SuperSecretPassword!')
        expect(@driver.find_element(Locators::Login::USERNAME_ERROR).displayed?).to be true
    end
end