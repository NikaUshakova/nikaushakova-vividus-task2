Description: task 2 - Precondion

Scenario: ‘Sign Up’ scenario as precondion
Given I am on the main application page
Then the page title is equal to 'Trello'
When I enter `$useremail` in field located `By.xpath(//input[@name='email'])`
When I click on element located `By.xpath(//button[@type='submit'])`
When I enter `$displayName` in field located `By.xpath(//input[@id='displayName'])`
When I enter `$userpass` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//button[@id="signup-submit"])`
When I click on element located `By.xpath(//button[@id="recaptcha-verify-button"])`
