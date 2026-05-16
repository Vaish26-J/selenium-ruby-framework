
module DriverClass
    class Driver
        attr_reader :driver
        def initialize()
            options = Selenium::WebDriver::Chrome::Options.new

            options.add_argument("--guest")
            options.add_argument("--disable-features=PasswordLeakDetection")
            options.add_argument("--disable-save-password-bubble")
            options.add_preference(
                'credentials_enable_service',
                false
            )
            options.add_preference(
            'profile.password_manager_enabled',
            false
            )
            service = Selenium::WebDriver::Service.chrome(
                path: 'D:\Driver\chromedriver-win64\chromedriver-win64\chromedriver.exe'
            )
            @driver = Selenium::WebDriver.for(:chrome, service: service, options: options)
        end
    end
end