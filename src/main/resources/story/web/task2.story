Description: task 2 - main

GivenStories: story/web/PreCondition_SignUp.story

Scenario: Sign In as existing user
Given I am on the main application page
Then the page title is equal to 'Trello'
When I click on element located `By.xpath(//a[text()="Log In"])`
When I sign in as registered user

Scenario: Login visual check
Given I am on the main application page
Then the page title is equal to 'Trello'
When I click on element located `By.xpath(//a[text()="Log In"])`
When I enter `#{generate(Internet.emailAddress)}` in field located `By.xpath(//input[@id='user'])`
When I enter `${userpass}` in field located `By.xpath(//input[@id='password'])`
When I COMPARE_AGAINST baseline with `email_ignoring` ignoring:
|ELEMENT						|
|By.xpath(//input[@id='user'])	|
When I click on element located `By.xpath(//input[@id='login'])`