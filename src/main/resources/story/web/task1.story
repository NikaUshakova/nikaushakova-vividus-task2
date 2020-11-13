Description: task 1 - Sign Up

Scenario: ‘Sign Up’ scenario using page elements steps
Given I am on the main application page
Then the page title is equal to 'Trello'
When I enter `<email>` in field located `By.xpath(//input[@name='email'])`
When I click on element located `By.xpath(//button[@type='submit'])`
When I enter `<displayName>` in field located `By.xpath(//input[@id='displayName'])`
When I enter `<password>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//button[@id="signup-submit"])`
When I click on element located `By.xpath(//button[@id="recaptcha-verify-button"])`
Examples:
|email		 	  						    				   	  |displayName								|password							   |
|#{generate(regexify '[a-z]{6}[@][g][m][a][i][l][.][c][o][m]')}	  |#{generate(regexify '[A-Z]{1}[a-z]{5}')} |#{generate(regexify '[A-Za-z0-9]{8}')}|
|#{generate(regexify '[A-Z]{6}[@][g][m][a][i][l][.][c][o][m]')}   |#{generate(regexify '[a-z]{6}')}			|#{generate(regexify '[A-Za-z0-9]{8}')}|
|#{generate(regexify '[A-Za-z]{6}[@][g][m][a][i][l][.][c][o][m]')}|#{generate(regexify '[A-Z]{6}')}			|#{generate(regexify '[A-Za-z0-9]{8}')}|

