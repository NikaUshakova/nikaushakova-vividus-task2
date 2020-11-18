Description: task 2 - Precondition

Scenario: Sign Up scenario as precondion
Given I am on the main application page
When I enter <email>, <displayName> and <password> in the registration form
When I click on element located `By.xpath(//button[@id='signup-submit'])`
When I click on element located `By.xpath(//div[@class='verify-button-holder'])`
Examples:
/input/creds.table

