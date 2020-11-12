Description: task 1

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


Scenario: 	Use API for Trello Board creation
Given request body: {
	"key": "#{generate(regexify '[0-9a-fA-F]{32}')}",
	"token": "#{generate(regexify '[0-9a-fA-F]{64}')}",
	"name": "newBoard"
	}
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/'
Then `${responseCode}` is equal to `200`