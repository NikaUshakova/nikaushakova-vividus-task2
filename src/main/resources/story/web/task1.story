Description: task 1

Scenario: ‘Sign Up’ scenario using page elements steps
Given I am on the main application page
Then the page title is equal to 'Trello'
When I click on element located `<buttonPath>`
Then the text '<text>' exists
Examples:
|buttonPath						  |text					   |
|By.xpath(//a[text()="Sign Up"])  |Sign up for your account|
