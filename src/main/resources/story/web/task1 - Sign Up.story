Description: task 1 - Sign Up

Scenario: Sign Up scenario using page elements steps
Given I am on the main application page
Then the page title is equal to 'Trello'
When I enter <email>, <displayName> and <password> in the registration form
When I click on element located `By.xpath(//button[@id='signup-submit'])`
When I click on element located `By.xpath(//div[@class='verify-button-holder'])`

!-- Verify that the user is registered
Given I am on the main application page
When I click on element located `By.xpath(//a[text()="Log In"])`
When I enter `<email>` in field located `By.xpath(//input[@id='user'])`
When I enter `<password>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//input[@id='login'])`
Then number of elements found by `By.xpath(//input[@value='Log in with Atlassian'])` is EQUAL_TO `1`
Examples:
|email                              |displayName                 |password                              |
|#{generate(Internet.emailAddress)}	|#{generate(Name.firstName)} |#{generate(regexify '[A-Za-z0-9]{8}')}|
|#{generate(Internet.emailAddress)}	|#{generate(Name.firstName)} |#{generate(regexify '[A-Za-z0-9]{8}')}|
|#{generate(Internet.emailAddress)}	|#{generate(Name.firstName)} |#{generate(regexify '[A-Za-z0-9]{8}')}|


