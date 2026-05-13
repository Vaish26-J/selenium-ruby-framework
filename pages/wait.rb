module WaitHelper
    class Wait
        def initialize(driver, waittime=10)
            @wait = Selenium::WebDriver::Wait.new(timeout: waittime)
            @driver = driver
        end

        def wait_until(locator)
            @wait.until{
                @driver.find_element(locator).displayed?  
            }
        end
    end
end