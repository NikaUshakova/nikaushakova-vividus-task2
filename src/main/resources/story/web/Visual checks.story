Description: task 2 - visual checks

Scenario: Visual checks
Given I am on the main application page
Then the page title is equal to 'Trello'
When I click on element located `By.xpath(//a[text()="Log In"])`
When I sign in as registered user
When I wait until an element with the tag 'input' and attribute 'type'='search' appears 
When I initialize the SCENARIO variable `nameValue` with value `#{generate(Name.firstName)}`
When I enter `${nameValue}` in field located `By.xpath(//input[@type='search'])`
When I click on element located `By.xpath(//a[@href='/search?q=${nameValue}'])`
When I COMPARE_AGAINST baseline with 'testBaseline_dynamic' ignoring:
|ELEMENT						 |
|By.xpath(//input[@type='search']|

