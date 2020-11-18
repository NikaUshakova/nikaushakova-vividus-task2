Description: task 2 - visual checks

GivenStories: story/web/PreCondition_Login.story

Scenario: Visual checks - Boards search
When I refresh the page
When I click on element located `By.xpath(//button[@data-test-id="header-boards-menu-button"])`
When I enter `#{generate(Name.lastName)}` in field located `By.xpath(//input[@data-test-id='header-boards-menu-search'])`
When I COMPARE_AGAINST baseline with `boardsSearch_ignoring` ignoring:
|ELEMENT						  								|
|By.xpath(//input[@data-test-id='header-boards-menu-search'])	|
using screenshot configuration:
|webFooterToCut|
|830		   |

Scenario: Visual checks - search on the main page
When I refresh the page
When I initialize the SCENARIO variable `nameValue` with value `#{generate(Name.firstName)}`
When I enter `${nameValue}` in field located `By.xpath(//input[@type='search'])`
When I COMPARE_AGAINST baseline with `search_ignoring` ignoring:
|ELEMENT						  |
|By.xpath(//input[@type='search'])|
using screenshot configuration:
|webFooterToCut|
|839		   |
When I click on element located `By.xpath(//a[@href='/search?q=${nameValue}'])`

Scenario: Visual checks - Change Username
When I click on element located `By.xpath(//a[@class='_2eXs5ruz0QfFdH'])`
When I click on element located `By.xpath(//div[@class='_1FekJJAz6Hu32v'])`
When I click on element located `By.xpath(//span[text()="Profile and Visibility"])`
When I enter `#{generate(Name.firstName)}` in field located `By.xpath(//input[@name='username'])`
When I COMPARE_AGAINST baseline with `changeUsername_ignoring` ignoring:
|ELEMENT						  								|
|By.xpath(//input[@name='username'])							|
When I click on element located `By.xpath(//button[@class='_12CX3u0AWDQ5EI voB8NatlbuEme5 _21upOlzpUQJcdT'])`

!-- If you don't have members in the team 
Scenario: Visual checks - Adding member to team
When I click on element located `By.xpath(//a[@class='_2eXs5ruz0QfFdH'])`
When I click on element located `By.xpath(//a[@href='/begemotiki1/members'])`
When I enter `#{generate(Internet.emailAddress)}` in field located `By.xpath(//input[@class='autocomplete-input'])`
When I COMPARE_AGAINST baseline with `addMember_ignoring` ignoring:
|ELEMENT						  							|
|By.xpath(//input[@class='autocomplete-input'])				|
using screenshot configuration:
|webFooterToCut|
|450		   |	
When I click on element located `By.xpath(//button[@class='autocomplete-btn primary'])`

Scenario: Visual checks - Create new board
When I click on element located `By.xpath(//a[@class='_2eXs5ruz0QfFdH'])`
When I click on element located `By.xpath(//button[@data-test-id='header-create-menu-button'])`
When I click on element located `By.xpath(//button[@data-test-id='header-create-board-button'])`
When I enter `#{generate(Name.lastName)}` in field located `By.xpath(//input[@class='_23NUW98LaZfBpQ'])`
When I COMPARE_AGAINST baseline with `newBoard_ignoring` ignoring: 
|ELEMENT						  			|
|By.xpath(//input[@class='_23NUW98LaZfBpQ'])| 
using screenshot configuration:
|webFooterToCut|
|840		   |	   
When I click on element located `By.xpath(//button[@class='uj9Ovoj4USRUQz voB8NatlbuEme5 _21upOlzpUQJcdT'])`