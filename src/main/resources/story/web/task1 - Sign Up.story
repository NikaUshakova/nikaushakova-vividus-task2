Description: task 1 - Sign Up

Scenario: ‘Sign Up’ scenario using page elements steps
Given I am on the main application page
Then the page title is equal to 'Trello'
When I enter <email>, <displayName> and <password> in the registration form
When I click on element located `By.xpath(//button[@id="signup-submit"])`
When I click on element located `By.xpath(//button[@id="recaptcha-verify-button"])`
Examples:
|email		 	  					|displayName				 |password							    |
|#{generate(Internet.emailAddress)}	|#{generate(Name.firstName)} |#{generate(regexify '[A-Za-z0-9]{8}')}|
|#{generate(Internet.emailAddress)}	|#{generate(Name.firstName)} |#{generate(regexify '[A-Za-z0-9]{8}')}|
|#{generate(Internet.emailAddress)}	|#{generate(Name.firstName)} |#{generate(regexify '[A-Za-z0-9]{8}')}|

