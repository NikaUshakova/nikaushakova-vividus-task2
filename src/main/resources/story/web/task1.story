Description: task 1

Scenario: ‘Sign Up’ scenario using page elements steps
Given I am on the main application page
Then the page title is equal to 'Trello'
When I click on element located `<buttonPath>`
Then the text '<text>' exists
When I enter `<email>` in field located `<emailButton>`
Examples:
|buttonPath						 |emailButton					|text					 |email		 	  						    					|
|By.xpath(//a[text()="Sign Up"]) |By.xpath(//input[@id='email'])|Sign up for your account|#{generate(regexify '[a-z]{6}[@][g][m][a][i][l][.][c][o][m]')}  |
When I click on element located `By.xpath(//input[@id='signup-submit'])`

