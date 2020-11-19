Description: task 2 - Precondition

Scenario: Sign Up scenario as precondition
Given I am on the main application page
When I initialize the STORY variable `email_var` with value `<email>`
When I initialize the STORY variable `displayName_var` with value `<displayName>`
When I initialize the STORY variable `password_var` with value `<password>`
When I enter ${email_var}, ${displayName_var} and ${password_var} in the registration form
When I click on element located `By.xpath(//button[@id='signup-submit'])`
When I click on element located `By.xpath(//div[@class='verify-button-holder'])`
Examples:
/input/creds.table


