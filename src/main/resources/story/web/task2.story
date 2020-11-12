Description: task 2 - main



Scenario: Sing In New User
Given I am on the main application page
Then the page title is equal to 'Trello'
When I click on element located `By.xpath(//a[text()="Log In"])`
When I enter `useremail` in field located `By.xpath(//input[@id='user'])`
When I enter `userpass` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//input[@id="login"])`
When I enter `userpass` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//button[@id="login-submit"])`