Description: task 2 - main

GivenStories: story/web/PreCondition_SignUp.story

Scenario: Login as existing user
Given I am on the main application page
Then the page title is equal to 'Trello'
When I click on element located `By.xpath(//a[text()="Log In"])`
When I enter `<email>` in field located `By.xpath(//input[@id='user'])`
When I enter `<password>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//input[@id='login'])`
Then number of elements found by `By.xpath(//input[@value='Log in with Atlassian'])` is EQUAL_TO `1`
Examples:
/input/creds.table
