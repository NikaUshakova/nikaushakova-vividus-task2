Description: task 3 - nested steps to check if elements exist

GivenStories: story/web/PreCondition_Login.story

Scenario: Create board
When I click on element located `By.xpath(//button[@data-test-id='header-create-menu-button'])`
When I find equal to '1' elements by By.xpath(//button[@data-test-id='header-create-board-button']) and for each element do
|step																											|
|When I click on element located `By.xpath(//button[@data-test-id='header-create-board-button'])`				|
|When I enter `#{generate(Name.lastName)}` in field located `By.xpath(//input[@class='_23NUW98LaZfBpQ'])`		|
|When I click on element located `By.xpath(//button[@class='uj9Ovoj4USRUQz voB8NatlbuEme5 _21upOlzpUQJcdT'])`	|
