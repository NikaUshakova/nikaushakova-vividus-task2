Description: task 4 



Scenario: Login with known issue
Given I am on the main application page
Then the page title is equal to 'Trello'
When I click on element located `By.xpath(//a[text()="Log In"])`
Then the page title is equal to 'Trello'
