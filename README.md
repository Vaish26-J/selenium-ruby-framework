# Selenium Automation Ruby Framework

# selenium automation framework made with Selenium Webdrivers, Ruby, RSpec

# tech stack
- Language: Ruby
- Automation: Selenium Webdriver
- Test Framework : RSpec
- BuildTool : Bundler
- Dependency File: Gemfile
- Logging: Logger
- Reporting Tool: Allure


# Framework Structre

- Pages/
- Locators/
- Spec/

# Setup

- Install Ruby
- Clone the repository
- Run: bundle install

# To run tests

- bundle exec rspec <spec_file_name>

# To generate report
- allure serve allure-results (temporary report.. open the server immediately using the json files created in the allure-results folder)

OR

- allure generate allure-results --clean -o allure-report (this creates a report file in html format in the allure-reports folder)
- allure open allure-reports (opens the report from the allure reports folder)

# Features

- Page object model
- Explicit waits
- Locators Separated
- Reusable Driver setup
- Screenshot on Failure testcases
- Logging Failures
- Data separation
- spec_helper for framework setup
- Reporting tool attachment

# Future enhancements
- Parallel execution
- CI/CD integration
- Cross browser support

# Architecture Flow
bundle exec rspec
      ↓
RSpec reads .rspec
      ↓
loads spec_helper automatically
      ↓
spec_helper loads framework files
      ↓
RSpec executes specs
      ↓
documentation formatter prints output
      ↓
Allure formatter generates results

