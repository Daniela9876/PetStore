Feature:  Service client GET
  As QA Automation
  I want to search for a pet by id
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: check the service GET method
    Given path 'pet', '305'
    When method get
    Then status 200



  Scenario Outline: get a pet with invalid values an id in the url
    * def idPet = '<id>'
    * def responseError = read ('classpath:karate/Pet/FindPetById.json')

    Given path 'pet', idPet
    When method get
    Then status 404
    And  match response == responseError

    Examples:
      | id |
      | 101010 |
      | 01 |
      | numeroUno |


