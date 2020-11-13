Description: task 2 - main

GivenStories: story/web/PreCondition.story

Scenario: Sign In as existing user
Given I am on the main application page
Then the page title is equal to 'Trello'
When I click on element located `By.xpath(//a[text()="Log In"])`
When I sign in as registered user

Scenario: Verify user profile
Given I am on a page with the URL 'https://www.google.com/intl/ru/gmail/about/'
When I click on element located `By.xpath(//a[text()="Log In"])`
When I enter `${useremail}` in field located `By.xpath(//input[@id='identifierId'])`
When I click on element located `By.xpath(//button[@type='button'])`
When I enter `${emailPass}` in field located `By.xpath(//input[@name='password'])`
When I click on element located `By.xpath(//button[@type='button'])`
When I click on element located `By.xpath(//a[text()="Verify your email"])`