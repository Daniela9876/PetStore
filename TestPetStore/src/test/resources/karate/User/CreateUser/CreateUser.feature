Feature:  Service client POST
  As QA Automation
  I want to create a user
  To validate the status code and response

  Background: consume service
    * url url

  @PositiveTestCreateUser
  Scenario: create a pet with corrects dates
    * def AddUser = {"id": '#(id)',  "username": '#(username)'}, "firstName": '#(firstName)', "lastName": '#(lastName)', "email": '#(email)', "password": '#(password)', "phone": '#(phone)', "userStatus": '#(userStatus)'}

    Given path 'user'
    And  request AddUser
    When method POST
    Then status 200

