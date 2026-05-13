require 'selenium-webdriver'

puts 'starting browser'
service = Selenium::WebDriver::Service.chrome(
  path: 'D:\Driver\chromedriver-win64\chromedriver-win64\chromedriver.exe'
)
driver = Selenium::WebDriver.for :chrome, service: service
puts 'browser opened'
driver.navigate.to "https://www.google.com"
puts driver.title
sleep 5
driver.quit
puts 'finished'