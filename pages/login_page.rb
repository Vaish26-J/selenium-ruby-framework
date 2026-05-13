require_relative '../pages/wait'
require_relative '../locators/login'
module Pages
    class Login < Locators::Login
        def initialize(driver)
            @driver = driver
            @wait = WaitHelper::Wait.new(@driver)
        end

        def login(uname, pwd)
            @wait.wait_until(USERNAME)
            @driver.find_element(USERNAME).send_keys(uname)
            @driver.find_element(PASSWORD).send_keys(pwd)
            @driver.find_element(LOGIN_BUTTON).click
        end

        def go_to_login
            @driver.navigate.to 'https://the-internet.herokuapp.com/login'
        end
    end
end