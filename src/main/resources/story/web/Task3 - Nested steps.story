Description: task 3 - nested steps to check if elements exist

GivenStories: story/web/PreCondition_Login.story

Scenario: Close all boards
When I find >= '1' elements by By.xpath(//div[@class='board-tile-details-name']) and for each element do
|step																												|
|When I save text of context element to SCENARIO variable `Board`													|
|When I click on element located `By.xpath(//div[@title='${Board}'])`												|
|When I change context to element located `By.xpath(//a[@class='board-menu-navigation-item-link js-open-more'])`	| 
|When I click on element located `By.xpath(//a[@class='board-menu-navigation-item-link js-open-more'])`				|
|When I change context to element located `By.xpath(//a[@class='board-menu-navigation-item-link js-close-board'])`	|
|When I click on element located `By.xpath(//a[@class='board-menu-navigation-item-link js-close-board'])`			|
|When I click on element located `By.xpath(//input[@class='js-confirm full negate'])`								|
|When I change context to element located `By.xpath(//a[@class='_2eXs5ruz0QfFdH'])`									|
|When I click on element located `By.xpath(//a[@class='_2eXs5ruz0QfFdH'])`											|

Scenario: Create board
When I click on element located `By.xpath(//button[@data-test-id='header-create-menu-button'])`
When I find equal to '1' elements by By.xpath(//button[@data-test-id='header-create-board-button']) and for each element do
|step																											|
|When I click on element located `By.xpath(//button[@data-test-id='header-create-board-button'])`				|
|When I initialize the STORY variable `boardName` with value `#{generate(Name.lastName)}`						|
|When I change context to element located `By.xpath(//input[@data-test-id='create-board-title-input'])`			|
|When I enter `${boardName}` in field located `By.xpath(//input[@data-test-id='create-board-title-input'])`		|
|When I click on element located `By.xpath(//button[@class='uj9Ovoj4USRUQz voB8NatlbuEme5 _21upOlzpUQJcdT'])`	|

Scenario: favorites board
When the condition `#{eval("<class>"=="board-header-btn js-star-board")}` is true I do
|step																											|
|When I click on element located `By.xpath(//span[@class='icon-sm icon-star board-header-btn-icon'])`			|





