Description: task 2 - visual checks

Scenario: Visual checks
Given I am on the main application page
Then the page title is equal to 'Trello'
When I click on element located `By.xpath(//a[text()="Log In"])`
When I sign in as registered user


When I enter `#{generate(Name.firstName)}` in field located `By.xpath(//input[@id='ljD2cG0RMpQSma9RsF2yQDq9ecSRpakf'])`
When I click on element located `By.xpath(//a[@role='img'])`

