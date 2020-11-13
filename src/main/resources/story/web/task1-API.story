Description: task 1 - API

Scenario: 	Use API for Trello Board creation

When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=${key}&token=${token}&name=${name}'
Then the response code is equal to '200'
