Description: task 2 - Precondition Login

Scenario: Login
Given I am on the main application page
Then the page title is equal to 'Trello'
When I click on element located `By.xpath(//a[text()="Log In"])`
When I sign in as registered user
When I wait until an element with the tag 'input' and attribute 'type'='search' appears 