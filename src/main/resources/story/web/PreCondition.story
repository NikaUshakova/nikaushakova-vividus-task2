Description: task 2 - Precondion

Scenario: ‘Sign Up’ scenario as precondion
Given I am on the main application page
Then the page title is equal to 'Trello'
When I enter ${useremail}, ${displayName} and ${userpass} in the registration form
When I click on element located `By.xpath(//button[@id="signup-submit"])`
When I click on element located `By.xpath(//button[@id="recaptcha-verify-button"])`

